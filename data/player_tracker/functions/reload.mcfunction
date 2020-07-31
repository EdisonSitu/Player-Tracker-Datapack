#tells everyone info
tellraw @a "Join either team tracked, team tracker, or team spectator. Also there is free for all"

#create teams
team add PT_tracked "Tracked"
team add PT_tracker "Tracker"
team add PT_spectator "Spectator"
team add PT_FFA "FFA"

#create scoreboard

scoreboard objectives add PT_usedCompass minecraft.dropped:minecraft.compass "usedCompass"
