quantify.STATS = {
  ["raw:kill_xp"] = {text = "Total XP from Kills", units = "integer"},
  ["raw:quest_xp"] = {text = "Total XP from Quests", units = "integer"},
  ["raw:rested_xp"] = { text = "Bonus Rested XP", units ="integer"},
  ["session_rates:pct_levels_gained"] = {text = "Fractional Levels Earned Per Hour", units = "decimal/hour"},
  ["raw:time_combat"] = { text = "Total Time in Combat", units = "time", order = 400},
  ["raw:levels_gained"] = { text = "Total Levels Earned", units = "integer"},
  ["raw:xp"] = { text = "Total XP", units = "integer"},
  ["session_rates:quest_xp"] = { text = "Quest XP Per Hour", units = "integer/hour"},
  ["raw:pct_levels_gained"] = {text = "Total Fractional Levels Earned", units="decimal"},
  ["raw:scenario_xp"] = {text = "Total XP from Scenarios", units="integer"},
  ["session_rates:kill_xp"] = {text = "Kill XP Per Hour", units = "integer/hour"},
  ["session_rates:rested_xp"] = {text = "Bonus Rested XP Per Hour", units = "integer/hour"},
  ["derived_stats:time_to_level"] = {text = "Est. Time to Next Level", units = "time"},
  ["session_rates:levels_gained"] = {text = "Total Levels Earned Per Hour", units = "integer/hour"},
  ["session_rates:xp"] = {text = "Total XP Per Hour", units = "integer/hour"},
  ["session_rates:other_xp"] = {text = "Misc. XP Per Hour", units = "integer/hour"},
  ["raw:other_xp"] = {text = "Total Misc. XP", units = "integer"},
  ["session_rates:scenario_xp"] = {text = "Scenario XP Per Hour", units = "integer/hour"},
  ["derived_stats:pct_play_time_afk"] = {text="% Play Time: AFK", units = "percentage", order = 610},
  ["derived_stats:pct_play_time_combat"] = {text = "% Play Time: Combat", units = "percentage", order = 410},
  ["raw:time_afk"] = {text = "Total Time AFK", units = "time", order = 600},
  ["raw:play_time"] = {text = "Total Play Time", units = "time", order = 50},
  ["raw:zone_time_*"] = {text = "*", units ="time", order = 200},
  ["derived_stats:zone_pct_*"] = {text = "Zone %: *", units = "percentage", order = 800},
  ["derived_stats:word_cloud_*"] = {text = "Word Count: *", units = "integer", order = 800},
  ["raw:whispers_sent"] = {text = "Whispers Sent", units = "integer"},
  ["raw:say_sent"] = {text = "Say Sent", units = "integer"},
  ["raw:yell_sent"] = {text = "Yell Sent", units = "integer"},
  ["raw:party_sent"] = {text = "Party Sent", units = "integer"},
  ["raw:raid_sent"] = {text = "Raid Sent", units = "integer"},
  ["raw:guild_sent"] = {text = "Guild Sent", units = "integer"},
  ["raw:combat_messages"] = {text = "Combat Messages Sent", units = "integer"},
  ["raw:mentions"] = {text = "Times Mentioned", units = "integer"},
  ["raw:emotes_sent"] = {text = "Emotes Used", units = "integer"},
  ["raw:whispers_received"] = {text = "Whispers Received", units = "integer"},
  ["raw:channel_sent_*"] = {text = "Channel Sent: *", units = "integer"},
  ["derived_stats:bff_sent"] = {text = "Top Recipient", units = "string"},
  ["derived_stats:bff_received"] = {text = "Top Sender", units = "string"},
  ["raw:num_rez_accepted"] = {text = "Rezes Accepted", units = "integer"},
  ["raw:num_spirit_healer_rez"] = {text = "Rezs by Spirit Healer", units = "integer"},
  ["raw:num_deaths"] = {text = "Deaths", units = "integer"},
  ["raw:num_kills"] = {text = "Kills", units = "integer"},
  ["raw:num_brez_accepted"] = {text = "Battle Rezes Accepted", units = "integer"},
  ["raw:num_corpse_runs"] = {text = "Corpse Runs", units = "integer"},
  ["raw:overall_raid_boss_kills"] = {text = "Raid Boss Kills", units = "integer"},
  --["raw:legion_dungeon_boss_kills"] = {text = "Legion Dungeon Boss Kills", units = "integer"},
  ["raw:player_raid_deaths"] = {text = "Players Deaths in Raids", units = "integer"},
  ["raw:player_dungeon_deaths"] = {text = "Player Deaths in Dungeons", units = "integer"},
  --["raw:legion_raid_boss_kills"] = {text = "Legion Raid Boss Kills", units = "integer"},
  --["raw:legion_dungeon_boss_wipes"] = {text = "Legion Dungeon Boss Wipes", units = "integer"},
  ["raw:overall_dungeon_boss_wipes"] = {text = "Dungeon Boss Wipes", units = "integer"},
  ["raw:overall_dungeon_boss_kills"] = {text = "Dungeon Boss Kills", units = "integer"},
  ["raw:dungeon_boss_kill_*"] = {text = "Boss Kills: *", units = "integer"},
  ["raw:overall_raid_boss_wipes"] = {text = "Raid Boss Wipes", units = "integer"},
  --["raw:legion_raid_boss_wipes"] = {text = "Legion Raid Boss Wipes", units = "integer"},
  ["raw:dungeon_boss_wipe_*"] = {text = "Dungeon Boss Wipes: *", units = "integer"},
  ["raw:raid_boss_wipe_*"] = {text = "Raid Boss Wipes: *", units = "integer"},
  ["raw:raid_boss_kill_*"] = {text = "Raid Boss Kills: *", units = "integer"},
  ["raw:time_crowd_controlled"] = {text = "Time Spent CC'd", units = "time"},
  ["raw:player_actual_kills"] = {text = "Killing Blows", units = "integer"},
  ["raw:player_kills"] = {text = "Total Kills", units = "integer"},
  ["raw:currency_gained_*"] = {text = "* Gained", units="integer"},
  ["raw:currency_lost_*"] = {text = "* Spent", units="integer"},
  ["raw:delta_money"] = {text = "Net Money Earned", units="money"},
  ["raw:total_money_gained"] = {text = "Money Earned", units="money"},
  ["raw:total_money_spent"] = {text = "Money Spent", units="money"},
  ["raw:money_looted"] = {text = "Money Looted", units="money"},
  ["raw:guild_tax"] = {text = "Guild Tax", units="money", order = 900},
  ["session_rates:currency_gained_*"] = {text = "* Gained Per Hour", units="integer/hour"},
  ["session_rates:currency_lost_*"] = {text = "* Spent Per Hour", units="integer/hour"},
  ["session_rates:delta_money"] = {text = "Net Money Earned Per Hour", units="money/hour"},
  ["session_rates:total_money_gained"] = {text = "Money Earned Per Hour", units="money/hour"},
  ["session_rates:total_money_spent"] = {text = "Money Spent Per Hour", units="money/hour"},
  ["session_rates:money_looted"] = {text = "Money Looted Per Hour", units="money/hour"},
  ["session_rates:guild_tax"] = {text = "Guild Tax Per Hour", units="money/hour", order = 901},
  ["raw:inv_type_*"] = {text = "* Items Looted", units = "integer", order = 900},
  ["raw:junk_looted_value"] = {text = "Value of Junk Looted", units = "money", order = 451},
  ["raw:bfa_dungeon_boss_kills"] = {text = "BFA Dungeon Boss Kills", units = "integer", order = 200},
  ["raw:bfa_dungeon_boss_wipes"] = {text = "BFA Dungeon Boss Wipes", units = "integer", order = 200},
  ["raw:bfa_raid_boss_kills"] = {text = "BFA Raid Boss Kills", units = "integer", order = 200},
  ["raw:bfa_raid_boss_wipes"] = {text = "BFA Raid Boss Wipes", units = "integer", order = 200},
  ["raw:total_items_looted"] = {text = "Total Items Looted", units = "integer", order = 150},
  ["raw:gear_loot"] = {text = "Gear Looted", units = "integer", order = 580},
  ["raw:cloth_looted"] = {text = "Cloth Gathered", units = "integer", order = 801},
  ["raw:tradeskill_looted"] = {text = "Tradeskill Items Looted", units = "integer", order = 800},
  ["raw:enchanting_looted"] = {text = "Enchanting Items Gathered", units = "integer", order = 801},
  ["raw:herb_looted"] = {text = "Herbs Gathered", units = "integer", order = 801},
  ["raw:jewelcrafting_looted"] = {text = "Jewelcrafting Items Gathered", units = "integer", order = 801},
  ["raw:meat_looted"] = {text = "Meat Gathered", units = "integer", order = 801},
  ["raw:leather_looted"] = {text = "Leather Gathered", units = "integer", order = 801},
  ["raw:metal_looted"] = {text = "Ore Gathered", units = "integer", order = 801},
  ["raw:junk_looted"] = {text = "Junk Items Looted", units = "integer", order = 450},
  ["raw:poor_loot"] = {text = "Greys Looted", units = "integer", order = 600},
  ["raw:common_loot"] = {text = "Common Items Looted", units = "integer", order = 601},
  ["raw:uncommon_loot"] = {text = "Greens Looted", units = "integer", order = 602},
  ["raw:rare_loot"] = {text = "Blues Looted", units = "integer", order = 603},
  ["raw:epic_loot"] = {text = "Purples Looted", units = "integer", order = 604},
  ["raw:bfa_poor_loot"] = {text = "BFA Greys Looted", units = "integer", order = 590},
  ["raw:bfa_common_loot"] = {text = "BFA Common Items Looted", units = "integer", order = 591},
  ["raw:bfa_uncommon_loot"] = {text = "BFA Greens Looted", units = "integer", order = 592},
  ["raw:bfa_rare_loot"] = {text = "BFA Blues Looted", units = "integer", order = 593},
  ["raw:bfa_epic_loot"] = {text = "BFA Purples Looted", units = "integer", order = 594},
  ["raw:cloth_gear_loot"] = {text = "Cloth Pieces Looted", units = "integer", order = 750},
  ["raw:leather_gear_loot"] = {text = "Mail Pieces Looted", units = "integer", order = 751},
  ["raw:mail_gear_loot"] = {text = "Mail Pieces Looted", units = "integer", order = 752},
  ["raw:plate_gear_loot"] = {text = "Plate Gear Looted", units = "integer", order = 753},
  ["raw:bfa_trade_good_*"] = {text = "* Gathered", units = "integer", order = 650},
  ["derived_stats:bfa_dungeon_time_*"] = {text = "Avg Completion Time: *", units = "time", order = 250},
  ["derived_stats:bfa_dungeon_completed_*"] = {text = "Total Completions: *", units = "integer", order = 250},
  ["raw:group_xp"] = {text = "Bonus Group XP", units = "integer"},
  ["session_rates:group_xp"] = {text = "Bonus Group XP Per Hour", units = "integer/hour"},
  ["tally:hated"] = {text = "Hated Factions", units = "integer", order = 810},
  ["tally:hostile"] = {text = "Hostile Factions", units = "integer", order = 809},
  ["tally:unfriendly"] = {text = "Unfriendly Factions", units = "integer", order = 807},
  ["tally:neutral"] = {text = "Neutral Factions", units = "integer", order = 806},
  ["tally:friendly"] = {text = "Friendly Factions", units = "integer", order = 805},
  ["tally:honored"] = {text = "Honored Factions", units = "integer", order = 804},
  ["tally:revered"] = {text = "Revered Factions", units = "integer", order = 803},
  ["tally:exalted"] = {text = "Exalted Factions", units = "integer", order = 802},
  ["derived_stats:faction_time_neutral_*"] = {text = "*: Time until Neutral", units = "time", order = 300},
  ["derived_stats:faction_time_exalted_*"] = {text = "*: Time until Exalted", units = "time", order = 300},
  ["derived_stats:faction_remaining_exalted_*"] = {text = "*: Remaining Rep until Exalted", units = "integer", order = 300},
  ["session_rates:faction_delta_*"] = {text = "*: Rep. Gained Per Day", units = "integer/day", order = 300},
  ["raw:time_mounted"] = {text = "Total Time Mounted", units = "time", order = 650},
  ["derived_stats:pct_time_mounted"] = {text = "% Play Time: Mounted", units = "percentage", order = 660},
  ["session_rates:azerite_xp"] = {text = "Azerite XP Per Hour", units = "integer/hour", order = 344},
  ["raw:azerite_xp"] = {text = "Azerite XP Gained", units = "integer", order = 343},
  ["derived_stats:azerite_time_to_level"] = {text = "Time to Next Azerite Level", units = "time", order = 345},  
  ["raw:faction_delta_*"] = {text = "Delta: *", units = "integer", order = 100}, --FOR TESTING ONLY
  
  --combat
  ["derived_stats:kd_ratio"] = {text = "Kill-to-Death Ratio", units = "decimal"},
  
  
  --currency
  ["raw:quest_money"] = {text = "Money from Quests", abbr = "Quest Money", units = "money"},
  ["session_rates:quest_money"] = {text = "Quest Money Per Hour", abbr = "QMpH", units = "money/hour"},
  ["raw:auction_money"] = {text = "Money from Auction House", abbr = "AH Money", units = "money"},
  ["raw:auction_money_spent"] = {text = "Money Spent at Auction House", abbr = "AH Spent", units = "money"},
  ["derived_stats:pct_money_quest"] = {text = "% Money Earned: Quest", units = "percentage", order = 845},
  ["derived_stats:pct_money_auction"] = {text = "% Money Earned: Auctions", units = "percentage", order = 845},
  ["derived_stats:pct_money_loot"] = {text = "% Money Earned: Loot", units = "percentage", order = 845},  
  ["raw:vendor_money"] = {text = "Money from Vendor Sales", abbr = "Vendor Sales", units = "money"},
  ["raw:vendor_money_spent"] = {text = "Money Spent at Vendors", abbr = "Vendor Spent", units = "money"},
  ["derived_stats:pct_money_vendor"] = {text = "% Money Earned: Vendor", units = "percentage", order = 845},
  
  --instances
  ["raw:bfa_total_dungeon_completed"] = {text = "Total BFA Dungeons Completed", units = "integer"},
  ["derived_stats:most_kills_*"] = {text = "Most Boss Kills: *", units = "integer", order = 872}, 
  ["derived_stats:most_player_deaths_*"] = {text = "Most Party Deaths: *", units = "integer", order = 874}, 
  ["derived_stats:most_wipes_*"] = {text = "Most Boss Wipes: *", units = "integer", order = 873}, 
  ["derived_stats:most_completed_dungeons_*"] = {text = "Most Completed Dungeons: *", units = "integer", order = 870}, 
  ["derived_stats:highest_kdr_*"] = {text = "Highest Boss Kill-to-Wipe Ratio: *", units = "decimal", order = 871}, 
  ["derived_stats:party_member_completed_dungeons_*"] = {text = "Completed Dungeons: *", units = "integer", order = 910}, 
  ["derived_stats:party_member_kdr_*"] = {text = "Boss Kill-to-Wipe Ratio: *", units = "decimal", order = 911}, 
  ["derived_stats:highest_dungeon_kdr_*"] = {text = "Highest Dungeon Kill-to-Wipe Ratio: *", units = "decimal", order = 865}, 
  ["derived_stats:lowest_dungeon_kdr_*"] = {text = "Lowest Dungeon Kill-to-Wipe Ratio: *", units = "decimal", order = 866}, 
  ["derived_stats:most_dungeon_wipes_*"] = {text = "Most Dungeon Wipes: *", units = "integer", order = 867}, 
  ["derived_stats:dungeon_kdr_*"] = {text = "Dungeon Kill-to-Wipe Ratio: *", units = "decimal", order = 980}, 
  ["derived_stats: dungeon_ddr_*"] = {text = "Dungeon Average Deaths Per Run: *", units = "decimal", order = 981}, 
 
  
  
  
  --loot
  ["raw:upgrade_received_*"] = {text = "iLvl Upgrades: *", units = "integer", order = 150},
  ["session_rates:upgrade_received_*"] = {text = "iLvl Upgrades Per Day: *", units = "integer", order = 160},
  ["raw:overall_ilevel_upgrades"] = {text = "Total iLvl Upgrades", units = "integer", order = 140},
  ["derived_stats:pct_armor_class_*"] = {text = "% Armor Class Looted: *", units = "percentage", order = 870},
  ["derived_stats:pct_loot_quality_*"] = {text = "% * Loot", units = "percentage", order = 825},
  
  
  --time
  ["raw:time_fishing"] = {text = "Total Time Fishing", units = "time", order = 850},
  ["derived_stats:pct_time_fishing"] = {text = "% Play Time: Fishing", units = "percentage", order = 852},
  ["raw:time_indoors"] = {text = "Total Time Indoors", units = "time", abbr="Indoors", order = 855},
  ["derived_stats:pct_time_indoors"] = {text = "% Play Time: Indoors", abbr = "Indoors", units = "percentage", order = 857},
  ["raw:time_outdoors"] = {text = "Total Time Outdoors", units = "time", abbr="Outdoors", order = 858},
  ["derived_stats:pct_time_outdoors"] = {text = "% Play Time: Outdoors", abbr = "Outdoors", units = "percentage", order = 859},
  
  --tradeskill
  ["raw:cooking_looted"] = {text = "Cooking Items and Fish Gathered", units = "integer", order = 801},
  
  --xp
  ["raw:pet_battle_xp"] = {text = "Total XP from Pet Battles", abbr="Pet Battle XP", units = "integer"},
  ["session_rates:pet_battle_xp"] = {text = "Pet Battle XP Per Hour", abbr="Pet Battle xp/hr", units = "integer/hour"},  
  ["derived_stats:rested_xp_time_saved"] = {text = "Time Saved from Rested XP", units = "time"},
  ["derived_stats:pct_xp_kill"] = {text = "% XP: Kills", units = "percentage", order = 820},
  ["derived_stats:pct_xp_pet_battle"] = {text = "% XP: Pet Battles", units = "percentage", order = 820},
  ["derived_stats:pct_xp_quest"] = {text = "% XP: Quests", units = "percentage", order = 820},
  ["derived_stats:pct_xp_other"] = {text = "% XP: Other", units = "percentage", order = 820},
  ["raw:gathering_xp"] = {text = "Total XP from Gathering", abbr="Gathering XP", units = "integer"},
  ["session_rates:gathering_xp"] = {text = "Gathering XP Per Hour", abbr="Gathering xp/hr", units = "integer/hour"},  
  ["derived_stats:pct_xp_gathering"] = {text = "% XP: Gathering", units = "percentage"},
  
}
