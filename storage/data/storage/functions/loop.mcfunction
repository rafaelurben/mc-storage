scoreboard players set @a storageraycast 0
execute as @a[scores={storagechestopen=1..}] at @s anchored eyes run function storage:load/raycast
scoreboard players set @a storagechestopen 0
