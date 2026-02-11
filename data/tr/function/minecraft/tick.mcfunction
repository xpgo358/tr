## Initialize new players (give default scores once)
execute as @a[tag=!tr_init] run scoreboard players set @s prank-level 0
execute as @a[tag=!tr_init] run scoreboard players set @s recording-status 0
execute as @a[tag=!tr_init] run scoreboard players set @s streaming-status 0
execute as @a[tag=!tr_init] run tag @s add tr_init

# Update teams every tick so prefixes stay in sync
function tr:admin/update_teams



# Update Prank Level (0-5)
execute as @a[scores={prank=0..5}] run scoreboard players operation @s prank-level = @s prank
# Update Streaming (0=No, 1=Yes)
execute as @a[scores={streaming=0..1}] run scoreboard players operation @s streaming-status = @s streaming
# Update Recording (0=No, 1=Yes)
execute as @a[scores={recording=0..1}] run scoreboard players operation @s recording-status = @s recording

# Reset and Re-enable triggers for everyone every tick
scoreboard players set @a prank -1
scoreboard players set @a streaming -1
scoreboard players set @a recording -1
scoreboard players enable @a prank
scoreboard players enable @a streaming
scoreboard players enable @a recording