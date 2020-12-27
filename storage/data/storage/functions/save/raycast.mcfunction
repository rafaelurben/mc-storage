execute if block ~ ~ ~ minecraft:chest{CustomName: '{"bold":true,"obfuscated":true,"color":"dark_aqua","extra":[{"bold":true,"obfuscated":false,"color":"aqua","text":" Items speichern "},{"bold":true,"obfuscated":true,"color":"dark_aqua","text":"--"}],"text":"--"}'} run function storage:save/fromchest
scoreboard players add @s storageraycast 1
execute unless score @s storageraycast matches 50.. unless block ~ ~ ~ minecraft:chest positioned ^ ^ ^0.1 run function storage:save/raycast
