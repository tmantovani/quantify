quantify_tradeskill = {}

local qt = quantify_tradeskill

local q = quantify

qt.MODULE_KEY = "tradeskill"

function qt:processItem(item,amount) 
  
  --Tradeskill item type and subtypes are not in Classic
  if (item.itemType == "Tradeskill" or item.itemType == "Trade Goods") then 
    q:incrementStat("TRADESKILL_LOOTED", amount)
    if (item.itemSubType == "Cloth") then
      q:incrementStat("CLOTH_LOOTED", amount)
    elseif (item.itemSubType == "Enchanting") then
      q:incrementStat("ENCHANTING_LOOTED", amount)
    elseif (item.itemSubType == "Herb") then
      q:incrementStat("HERB_LOOTED", amount)
    elseif (item.itemSubType == "Jewelcrafting") then
      q:incrementStat("JEWELCRAFTING_LOOTED", amount)
    elseif (item.itemSubType == "Leather") then
      q:incrementStat("LEATHER_LOOTED", amount)
    elseif (item.itemSubType == "Meat") then
      q:incrementStat("MEAT_LOOTED", amount)
    elseif (item.itemSubType == "Metal & Stone") then
      q:incrementStat("METAL_LOOTED", amount)
    elseif (item.itemSubType == "Cooking") then
      q:incrementStat("COOKING_LOOTED", amount)
    end
  end
  
  if (item.isCraftingReagent) then
    if (item.expacID == quantify_loot.BFA) then
      q:incrementStatByPath("tradeskill/stats/bfa_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.VANILLA) then
      q:incrementStatByPath("tradeskill/stats/classic_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.BC) then
      q:incrementStatByPath("tradeskill/stats/bc_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.WOTLK) then
      q:incrementStatByPath("tradeskill/stats/wotlk_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.CATA) then
      q:incrementStatByPath("tradeskill/stats/cata_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.MOP) then
      q:incrementStatByPath("tradeskill/stats/mop_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.WOD) then
      q:incrementStatByPath("tradeskill/stats/wod_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.LEGION) then
      q:incrementStatByPath("tradeskill/stats/legion_trade_good_collected/"..item.itemName, amount)
    elseif (item.expacID == quantify_loot.SL) then
      q:incrementStatByPath("tradeskill/stats/sl_trade_good_collected/"..item.itemName, amount)
    end
    
  end
    
end

function quantify_tradeskill:calculateDerivedStats(segment)

end

function quantify_tradeskill:updateStats(segment)

end
 
function quantify_tradeskill:newSegment(segment)
  
  segment.stats = q:addKeysLeft(segment.stats,
                    {cloth_looted = 0,
                     tradeskill_looted = 0,
                     enchanting_looted = 0,
                     herb_looted = 0,
                     jewelcrafting_looted = 0,
                     meat_looted = 0,
                     leather_looted = 0,
                     metal_looted = 0,
                     cooking_looted = 0,
                     bfa_trade_good_collected = {},
                     classic_trade_good_collected = {},
                     bc_trade_good_collected = {},
                     wotlk_trade_good_collected = {},
                     cata_trade_good_collected = {},
                     mop_trade_good_collected = {},
                     wod_trade_good_collected = {},
                     legion_trade_good_collected = {},
                     sl_trade_good_collected = {}})
  
end

table.insert(quantify.modules, quantify_tradeskill)