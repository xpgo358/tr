#tellraw @a {"text":"[tr] Limpiando scoreboards y reiniciando datos de jugadores...","color":"yellow"}

# Status scoreboards
scoreboard objectives remove prank-level
scoreboard objectives remove recording-status
scoreboard objectives remove streaming-status

# Triggers
scoreboard objectives remove prank
scoreboard objectives remove streaming
scoreboard objectives remove recording
scoreboard objectives remove help
scoreboard objectives remove rules


# Health scoreboard
scoreboard objectives remove health


# Init Tag and reset scores for all players
tag @a remove tr_init
scoreboard players reset *

#tellraw @a {"text":"[tr] Scoreboards limpiados y datos de jugadores reiniciados","color":"green"}
