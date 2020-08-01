#introduction
tellraw @a ["",{"text":"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~","color":"gold"},{"text":"\n\n"},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020Player Tracker Datapack (1.16.1)","color":"white"},{"text":"\n"},{"text":" \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020By:","color":"yellow"},{"text":" YouPlanet","color":"white"},{"text":"\n\n \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Thank you for installing this datapack!\n\n"},{"text":"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~","color":"gold"}]

#gamerule stuff (for more readability)
gamerule sendCommandFeedback false

#create teams
team add PT_tracked "Tracked"
team add PT_tracker "Tracker"
team add PT_spectator "Spectator"
team add PT_FFA "FFA"

#give players instruction book
execute as @a run function player_tracker:get_manual

