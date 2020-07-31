#make all players in spectator team spectator
gamemode spectator @a[team=PT_spectator]

#give Tracked tag to "FFA" and "tracked"
execute as @e[team=PT_FFA] run tag @s add Tracked
execute as @e[team=PT_tracked] run tag @s add Tracked
#give Tracker tag to "FFA" and "tracker"
execute as @e[team=PT_FFA] run tag @s add Tracker
execute as @e[team=PT_tracker] run tag @s add Tracker

#remove Tracked tag to "Tracker"
execute as @e[team=PT_tracker] run tag @s remove Tracked
execute as @e[team=PT_spectator] run tag @s remove Tracked
#remove Tracker tag to "Tracked"
execute as @e[team=PT_tracked] run tag @s remove Tracker
execute as @e[team=PT_spectator] run tag @s remove Tracked

#remove compass in inventory if not tracker
execute as @e[tag=!Tracker] run clear @s minecraft:compass{tracker:1b, LodestoneTracked:0b} 1

#give tracked tag to "FFA" and "tracked"
execute as @a[team=FFA] run tag @s add Tracked
execute as @a[team=tracked] run tag @s add Tracked

#remove tracked tag to "tracker"
execute as @a[team=tracker] run tag @s remove Tracked


#remove compass in inventory if not right team
execute as @e[team=tracked] run clear @s compass{tracker:1b} 1

#check if there's a compass item (on the ground) and update the compass
execute if entity @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}}] run function player_tracker:find_target


#check if there is no compass in "tracker"/"FFA" team's inventory and give them compass
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}}] run function player_tracker:give_compass
