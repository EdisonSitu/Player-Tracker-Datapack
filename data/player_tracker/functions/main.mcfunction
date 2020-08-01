#remove compass in inventory if not tracker
execute as @e[tag=!Tracker,nbt={Inventory:[{id: "minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}]}] run clear @s minecraft:compass{tracker:1b, LodestoneTracked:0b} 1

#check if any player has used a compass
execute if entity @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}}] run function player_tracker:find_target

#check if there is no compass in "tracker"/"FFA" team's inventory and give them compass
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}}] run function player_tracker:give_compass
