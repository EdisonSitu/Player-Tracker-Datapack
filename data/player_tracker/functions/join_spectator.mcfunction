#tell player they joined spectator
tellraw @s ["",{"text":"You have joined ","color":"red"},{"text":"Spectators","color":"gray"},{"text":".","color":"red"}]

#adds player to spectators
team join PT_spectator

#add/remove tags
tag @s remove Tracked
tag @s remove Tracker

#make player specator
gamemode spectator @s