#update the compass's dimension
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] at @s run data modify entity @s Item.tag.LodestoneDimension set from entity @e[tag=Processing, limit=1, sort=nearest] Dimension

#create marker armorstand
execute at @e[tag=Processing,limit=1,sort=nearest] at @e[tag=Tracked, limit=1,sort=nearest,distance=0.1..] run summon minecraft:armor_stand ~ ~2 ~ {Tags:["Mark"],NoGravity:1b,Invisible:1b}

#tell tracker player who they were currently tracking
execute at @e[tag=Mark] as @e[tag=Tracked,limit=1,sort=nearest] run tellraw @a[tag=Processing] ["",{"text":"You are currently tracking ","color":"red"},{"selector":"@s","color":"yellow"},{"text":"'s ","color":"yellow"},{"text":"current position.","color":"red"}]

#update the position that the compass points
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.X set from entity @e[tag=Mark,limit=1,sort=nearest] Pos[0]
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.Y set from entity @e[tag=Mark,limit=1,sort=nearest] Pos[1]
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.Z set from entity @e[tag=Mark,limit=1,sort=nearest] Pos[2]

#remove marker
kill @e[tag=Mark]
