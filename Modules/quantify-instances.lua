quantify_instances = {}

local q = quantify

quantify_instances.Session = {}

quantify_instances.MODULE_KEY = "instances"
quantify_instances.RAW_DUNGEON_BOSS_KILL_PREFIX = "dungeon_boss_kill_*"
quantify_instances.RAW_RAID_BOSS_KILL_PREFIX = "raid_boss_kill_*"
quantify_instances.RAW_DUNGEON_BOSS_WIPE_PREFIX = "dungeon_boss_wipe_*"
quantify_instances.RAW_RAID_BOSS_WIPE_PREFIX = "raid_boss_wipe_*"
quantify_instances.BFA_DUNGEON_COMPLETE_PREFIX = "dungeon_complete_*"

function quantify_instances.Session:new(o)
  o = o or {legion_raid_boss_kills = 0, legion_raid_boss_wipes = 0, legion_dungeon_boss_kills = 0, legion_dungeon_boss_wipes = 0, bfa_raid_boss_kills = 0, bfa_raid_boss_wipes = 0, bfa_dungeon_boss_kills = 0, bfa_dungeon_boss_wipes = 0, overall_raid_boss_kills = 0, overall_raid_boss_wipes = 0, overall_dungeon_boss_kills = 0, overall_dungeon_boss_wipes = 0, player_raid_deaths = 0, player_dungeon_deaths = 0}
  setmetatable(o, self)
  self.__index = self
  return o
end

local session

local function init()
  q.current_segment.stats[quantify_instances.MODULE_KEY] = {}
  q.current_segment.stats[quantify_instances.MODULE_KEY].raw = quantify_instances.Session:new()
  session = q.current_segment.stats[quantify_instances.MODULE_KEY].raw
end

local function incrementPrefix(prefix, instance)
  local key = prefix .. instance
  if (session[key] == nil) then
    session[key] = 0
  end
  session[key] = session[key] + 1
end

local function encounterEnd(event, ...)
  local encounterID, encounterName, difficultyID, groupSize, success = unpack({...})
  print("encounterId: ", encounterID)
  
  if quantify_state:isPlayerInLegionRaid() then
    if (success == 1) then
      session.legion_raid_boss_kills = session.legion_raid_boss_kills + 1
    else
      session.legion_raid_boss_wipes = session.legion_raid_boss_wipes + 1
    end
  elseif quantify_state:isPlayerInLegionDungeon() then
    if (success == 1) then
      session.legion_dungeon_boss_kills = session.legion_dungeon_boss_kills + 1
    else
      session.legion_dungeon_boss_wipes = session.legion_dungeon_boss_wipes + 1
    end    
  end
  
  if quantify_state:isPlayerInBfaRaid() then
    if (success == 1) then
      session.bfa_raid_boss_kills = session.bfa_raid_boss_kills + 1
    else
      session.bfa_raid_boss_wipes = session.bfa_raid_boss_wipes + 1
    end
  elseif quantify_state:isPlayerInBfaDungeon() then
    if (success == 1) then
      session.bfa_dungeon_boss_kills = session.bfa_dungeon_boss_kills + 1
    else
      session.bfa_dungeon_boss_wipes = session.bfa_dungeon_boss_wipes + 1
    end    
  end
  
  local instance_name = quantify_state:getInstanceName()
  if (success == 1 and quantify_state:getInstanceType() == "party") then
    incrementPrefix(quantify_instances.RAW_DUNGEON_BOSS_KILL_PREFIX,instance_name)
    session.overall_dungeon_boss_kills = session.overall_dungeon_boss_kills + 1
  elseif (success == 1 and quantify_state:getInstanceType() == "raid") then
    incrementPrefix(quantify_instances.RAW_RAID_BOSS_KILL_PREFIX, instance_name)
    session.overall_raid_boss_kills = session.overall_raid_boss_kills + 1
  elseif (success == 0 and quantify_state:getInstanceType() == "party") then
    incrementPrefix(quantify_instances.RAW_DUNGEON_BOSS_WIPE_PREFIX, instance_name)
    session.overall_dungeon_boss_wipes = session.overall_dungeon_boss_wipes + 1
  elseif (success == 0 and quantify_state:getInstanceType() == "raid") then
    incrementPrefix(quantify_instances.RAW_RAID_BOSS_WIPE_PREFIX, instance_name)
    session.overall_raid_boss_wipes = session.overall_raid_boss_wipes + 1
  end
  

end

local function playerDead(event, ...)
  if (quantify_state:isPlayerInInstance()) then
    if (quantify_state:getInstanceType() == "raid") then
      session.player_raid_deaths = session.player_raid_deaths + 1
    elseif (quantify_state:getInstanceType() == "party") then
      session.player_dungeon_deaths = session.player_dungeon_deaths + 1
    end
  end
end

local function bossKill(event, encounterId, encounterName)
  if (q:contains(q.BFA_END_BOSSES, "encounterName") and quantify_state:isPlayerInInstance() and quantify_state:getInstanceStartTime() ~= nil) then
    local key = ql.BFA_DUNGEON_COMPLETE_PREFIX..quantify_state:getInstanceName()..getInstanceDifficulty()
    if (session[key] == nil) then
      session[key] = {n = 0, avg = 0}
    end
    local prev_sum = session[key].n * session[key].avg
    local n = session[key].n + 1
    local sum = prev_sum + (GetTime() - quantify_state:getInstanceStartTime())
    session[key].n = n
    session[key].avg = sum / n
  end
  
end

function quantify_instances:calculateDerivedStats(segment)

end

function quantify_instances:updateStats(segment)

end
 
function quantify_instances:newSegment(previous_seg,new_seg)
  
  init()
  
end

init()

table.insert(quantify.modules, quantify_instances)
  
q:registerEvent("ENCOUNTER_END", encounterEnd)
q:registerEvent("PLAYER_DEAD", playerDead)
q:registerEvent("BOSS_KILL", bossKill)