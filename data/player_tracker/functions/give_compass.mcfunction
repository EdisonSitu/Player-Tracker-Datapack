#gives compass for people who doesnt have it
execute as @a[tag=Tracker] if entity @s[nbt=!{Inventory:[{id: "minecraft:compass", tag:{tracker:1b, LodestoneTracked:0b}}]}] if entity @s[scores={PT_usedCompass=..0}] run give @s minecraft:compass{tracker:1b, LodestoneTracked:0b} 1