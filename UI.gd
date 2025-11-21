extends Control

@onready var stone = $TextureRect/Stone
@onready var wood = $TextureRect/Wood

func add_stone():
	var value = int(stone.text) # превращаем текст в число
	value += 1 # добавляем 1
	stone.text = str(value) # записываем обратно в строку

func add_wood():
	var value = int(wood.text) # превращаем текст в число
	value += 1 # добавляем 1
	wood.text = str(value) # записываем обратно в строку
