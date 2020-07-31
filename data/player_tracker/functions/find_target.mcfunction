#check if a target exists and updates target
execute as @e[tag=Tracker] if entity @s[scores={PT_usedCompass=1..}] at @s if entity @e[tag=Tracked, limit=1,sort=nearest,distance=0.1..] run function player_tracker:update_target

#make usedCompass not 0 for the nearby player
execute at @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] as @e[tag=Tracker, scores={PT_usedCompass=1..},limit=1, sort=nearest] run scoreboard players set @s PT_usedCompass 0

#make the compass automatically pickup
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s run data merge entity @s {PickupDelay:0}