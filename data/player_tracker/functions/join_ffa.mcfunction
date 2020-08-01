#tell player they joined FFA
tellraw @s ["",{"text":"You have joined ","color":"red"},{"text":"FFA","color":"light_purple"},{"text":".","color":"red"}]

#adds player to FFA
team join PT_FFA

#add/remove tags
tag @s add Tracked
tag @s add Tracker