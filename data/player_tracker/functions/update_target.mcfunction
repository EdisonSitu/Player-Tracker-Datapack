#update the compass's dimension (overworld)
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] run data merge entity @s {Item:{tag:{LodestoneDimension:"minecraft:overworld"}}}

#update the compass so it doesn't need a lodestone
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s run data merge entity @s {Item:{tag:{LodestoneTracked:0b}}}

#update the position that the compass points
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.X set from entity @e[tag=Tracked, limit=1,sort=nearest] Pos[0]
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.Y set from entity @e[tag=Tracked, limit=1,sort=nearest] Pos[1]
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s at @s run data modify entity @s Item.tag.LodestonePos.Z set from entity @e[tag=Tracked, limit=1,sort=nearest] Pos[2]

#make the compass automatically pickup`
execute as @e[type=item,nbt={Item:{id:"minecraft:compass", tag:{tracker:1b}}}] if entity @s run data merge entity @s {PickupDelay:0}