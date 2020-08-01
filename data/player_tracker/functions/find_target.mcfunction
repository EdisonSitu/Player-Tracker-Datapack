#update info on Tracker player who requested them (ie the one without a compass)
execute at @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] as @e[tag=Tracker, nbt=!{Inventory:[{id:"minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}, Count:0b}]}, limit=1, sort=nearest] run tag @s add Processing

#check if a target exists and updates target
execute at @e[tag=Processing, limit=1, sort=nearest] if entity @e[tag=Tracked, limit=1,sort=nearest,distance=0.1..] run function player_tracker:update_target

#make the compass automatically pickup
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s run data merge entity @s {PickupDelay:0, Age:5900}

#mark the requesting Tracker player as currently done
execute as @e[tag=Processing] run tag @s remove Processing