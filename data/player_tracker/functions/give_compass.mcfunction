#gives compass for people who doesnt have it
execute as @a[tag=Tracker] if entity @s[tag=!Processing, nbt=!{Inventory:[{id: "minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}]}] run give @s minecraft:compass{display:{Name:'{"text":"Player Tracker"}'}, tracker:1b, LodestoneTracked:0b} 1
