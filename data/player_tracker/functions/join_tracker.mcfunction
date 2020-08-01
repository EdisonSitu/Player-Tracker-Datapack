#tell player they joined the tracker team
tellraw @s ["",{"text":"You have joined the ","color":"red"},{"text":"Tracker","color":"dark_red"},{"text":" team.","color":"red"}]

#adds player to tracker team
team join PT_tracker

#add/remove tags
tag @s remove Tracked
tag @s add Tracker