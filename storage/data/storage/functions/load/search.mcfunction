execute store result score #saveduuid0 storage run data get storage storage:saves Players[0].UUID[0] 1
execute store result score #saveduuid1 storage run data get storage storage:saves Players[0].UUID[1] 1
execute store result score #saveduuid2 storage run data get storage storage:saves Players[0].UUID[2] 1
execute store result score #saveduuid3 storage run data get storage storage:saves Players[0].UUID[3] 1

scoreboard players set #uuidequal storage 0

execute if score #playeruuid0 storage = #saveduuid0 storage run scoreboard players add #uuidequal storage 1
execute if score #playeruuid1 storage = #saveduuid1 storage run scoreboard players add #uuidequal storage 1
execute if score #playeruuid2 storage = #saveduuid2 storage run scoreboard players add #uuidequal storage 1
execute if score #playeruuid3 storage = #saveduuid3 storage run scoreboard players add #uuidequal storage 1

execute unless score #uuidequal storage matches 4 run function storage:load/searchnext
execute unless score #uuidequal storage matches 4 run function storage:load/search
