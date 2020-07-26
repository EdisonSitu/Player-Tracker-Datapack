#make all players in spectator team spectator
gamemode spectator @a[team=spectator]


#give tracked tag to "FFA" and "tracked"
execute as @a[team=FFA] run tag @s add Tracked
execute as @a[team=tracked] run tag @s add Tracked

#remove tracked tag to "tracker"
execute as @a[team=tracker] run tag @s remove Tracked


#remove compass in inventory if not right team
execute as @e[team=tracked] run clear @s compass{tracker:1b} 1

#check if there's a compass item (on the ground) and update the compass
execute if entity @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] run function player_tracker:update_target


#check if there is no compass in "tracker"/"FFA" team's inventory and give them compass
execute as @a[team=tracker] if entity @s[nbt=!{Inventory:[{id: "minecraft:compass", tag:{tracker:1b}}]}] run give @s minecraft:compass{tracker:1b} 1
execute as @a[team=FFA] if entity @s[nbt=!{Inventory:[{id: "minecraft:compass", tag:{tracker:1b}}]}] run give @s minecraft:compass{tracker:1b} 1