#make all players in spectator team spectator
gamemode spectator @a[team=spectator]


#check if there's a compass item (on the ground) and update the compass
execute if entity @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] run function player_tracker:update_target


#check if there is no compass in "tracker" team's inventory and give them compass
execute as @a[team=tracker] if entity @s[nbt=!{Inventory:[{id: "minecraft:compass", tag:{tracker:1b}}]}] run give @s minecraft:compass{tracker:1b} 1