execute unless score @s storage matches 1.. run tellraw @s {"text":"[Schliessfach] - Du hast noch keine Items gespeichert!","color":"red"}
execute if score @s storage matches 1.. unless block ~ ~ ~ minecraft:chest run setblock ~ ~ ~ minecraft:chest{CustomName: '{"bold":true,"obfuscated":true,"color":"dark_aqua","extra":[{"bold":true,"obfuscated":false,"color":"aqua","text":" Items laden "},{"bold":true,"obfuscated":true,"color":"dark_aqua","text":"--"}],"text":"--"}'}
execute if score @s storage matches 1.. store result score #playeruuid0 storage run data get entity @s UUID[0] 1
execute if score @s storage matches 1.. store result score #playeruuid1 storage run data get entity @s UUID[1] 1
execute if score @s storage matches 1.. store result score #playeruuid2 storage run data get entity @s UUID[2] 1
execute if score @s storage matches 1.. store result score #playeruuid3 storage run data get entity @s UUID[3] 1
execute if score @s storage matches 1.. run tellraw @s {"text":"[Schliessfach] - Deine Items werden gesucht...","color":"gold"}
execute if score @s storage matches 1.. run function storage:load/search
execute if score @s storage matches 1.. run data modify block ~ ~ ~ Items set from storage storage:saves Players[0].Items
execute if score @s storage matches 1.. run data remove storage storage:saves Players[0]
execute if score @s storage matches 1.. run tellraw @s {"text":"[Schliessfach] - Items wurden geladen!","color":"dark_green"}
execute if score @s storage matches 1.. run scoreboard players set @s storage 0
