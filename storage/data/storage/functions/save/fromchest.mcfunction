execute if score @s storage matches 1.. run tellraw @s {"text":"[Schliessfach] - Du hast bereits Items gespeichert! Lade zuerst die alten!","color":"red"}
execute unless score @s storage matches 1.. run data modify storage storage:saves Players append value {Items:[]}
execute unless score @s storage matches 1.. run data modify storage storage:saves Players[-1].Items set from block ~ ~ ~ Items
execute unless score @s storage matches 1.. run data modify storage storage:saves Players[-1].UUID set from entity @s UUID
execute unless score @s storage matches 1.. run data modify block ~ ~ ~ Items set value []
execute unless score @s storage matches 1.. run tellraw @s {"text":"[Schliessfach] - Items wurden gespeichert!","color":"dark_green"}
execute unless score @s storage matches 1.. run scoreboard players set @s storage 1
