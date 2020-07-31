#update the compass's dimension (overworld)
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] at @s run data modify entity @s Item.tag.LodestoneDimension set from entity @e[type=player, tag=Tracker, limit=1, sort=nearest,distance= 0.1..2] Dimension

#update the position that the compass points
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.X set from entity @e[tag=Tracked, limit=1,sort=nearest,distance=0.1..] Pos[0]
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.Y set from entity @e[tag=Tracked, limit=1,sort=nearest,distance=0.1..] Pos[1]
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.Z set from entity @e[tag=Tracked, limit=1,sort=nearest,distance=0.1..] Pos[2]
