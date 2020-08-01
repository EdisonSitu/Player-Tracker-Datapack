#tell player they joined the tracked team
tellraw @s ["",{"text":"You have joined the ","color":"red"},{"text":"Tracked","color":"green"},{"text":" team.","color":"red"}]

#adds player to tracked team
team join PT_tracked

#add/remove tags
tag @s add Tracked
tag @s remove Tracker