extends Area2D

@onready var sprite = $Sprite2D # изначальный спрайт
@onready var timer = $Timer # таймер
@onready var upgrade_menu = get_node("../Upgrade") # меню улучшения
@onready var click_anim = get_node("../ClickAnim") # анимация клика
@onready var ui = get_node("../UI") # интерфейс
@export var building_type: String # тип здания
@export var normal_texture: Texture2D # обычная текстура
@export var hover_texture: Texture2D # текстура обводки

var upgrade_level := 0 # уровень здания

var mouse_over := false # находится ли мышка на здании

func _ready():
	sprite.texture = normal_texture

func _on_mouse_entered():
	sprite.texture = hover_texture # поменять на картинку с обводкой
	mouse_over = true
	click_anim.mouse_over = true
	if building_type == "stone": # курсор на фабрике камня
		upgrade_menu.stone = true
	if building_type == "castle": # курсор на замке
		upgrade_menu.castle = true
	if building_type == "wood": # курсор на фабрике дерева
		upgrade_menu.wood = true
	upgrade_menu.show_upgrade() # показать апгрейд меню

func _on_mouse_exited():
	sprite.texture = normal_texture # назад на обычную картинку
	mouse_over = false
	click_anim.mouse_over = false
	upgrade_menu.hide_upgrade() # скрыть апгрейд меню

func _process(_delta):
	# если курсор на здании и зажата лкм начает/останавливает таймер
	if mouse_over == true and Input.is_action_pressed("click_left"):
		if not timer.is_stopped():
			return
		timer.start()
	else:
		if timer.is_stopped() == false:
			timer.stop()
	
	# если курсор на здании и нажата пкм
	if mouse_over == true and Input.is_action_just_pressed("click_right"):
		if upgrade_level < 4: # если уровень меньше 4
			var stone_value =  int(upgrade_menu.stone_label.text)
			var wood_value =  int(upgrade_menu.wood_label.text)
			var ui_stone_value = int(ui.stone.text)
			var ui_wood_value = int(ui.wood.text)
			# если это фабрика камня
			if building_type == "stone" and ui_stone_value >= stone_value and ui_wood_value >= wood_value:
				upgrade_level += 1 # добавляем ему + 1 уровень
				
				ui_stone_value -= stone_value
				ui_wood_value -= wood_value
				ui.stone.text = str(ui_stone_value)
				ui.wood.text = str(ui_wood_value)
				
				# массив со всеми апгрейдами
				var building_upgrades := [
					load("res://Buildings/StoneFactory/StoneFactory2.tscn"),
					load("res://Buildings/StoneFactory/StoneFactory3.tscn"),
					load("res://Buildings/StoneFactory/StoneFactory4.tscn"),
					load("res://Buildings/StoneFactory/StoneFactory5.tscn")
				]
				
				# создаем новый инстанс
				var upgraded_building = building_upgrades[upgrade_level - 1].instantiate()
				
				# запоминаем позицию
				upgraded_building.global_position = global_position
				
				# передаем уровень в новую сцену
				upgraded_building.upgrade_level = upgrade_level
				print(building_type, upgrade_level)
				
				# заменяем текущую сцену
				var parent = get_parent()
				parent.add_child(upgraded_building)
				queue_free()
				
				upgrade_menu.stone_upgrade_level += 1
				ui.upgrade_stone()
			
			# если это замок
			if building_type == "castle" and ui_stone_value >= stone_value and ui_wood_value >= wood_value:
				upgrade_level += 1 # добавляем ему + 1 уровень
				
				ui_stone_value -= stone_value
				ui_wood_value -= wood_value
				ui.stone.text = str(ui_stone_value)
				ui.wood.text = str(ui_wood_value)
				
				# массив со всеми апгрейдами
				var building_upgrades := [
					load("res://Buildings/Castle/Castle2.tscn"),
					load("res://Buildings/Castle/Castle3.tscn"),
					load("res://Buildings/Castle/Castle4.tscn"),
					load("res://Buildings/Castle/Castle5.tscn")
				]
				
				# создаем новый инстанс
				var upgraded_building = building_upgrades[upgrade_level - 1].instantiate()
				
				# запоминаем позицию
				upgraded_building.global_position = global_position
				
				# передаем уровень в новую сцену
				upgraded_building.upgrade_level = upgrade_level
				print(building_type, upgrade_level)
				
				# заменяем текущую сцену
				var parent = get_parent()
				parent.add_child(upgraded_building)
				queue_free()
				
				upgrade_menu.castle_upgrade_level += 1
				# ui.upgrade_stone()
			
			# если это фабрика дерева
			if building_type == "wood" and ui_stone_value >= stone_value and ui_wood_value >= wood_value:
				upgrade_level += 1 # добавляем ему + 1 уровень
				
				ui_stone_value -= stone_value
				ui_wood_value -= wood_value
				ui.stone.text = str(ui_stone_value)
				ui.wood.text = str(ui_wood_value)
				
				# массив со всеми апгрейдами
				var building_upgrades := [
					load("res://Buildings/WoodFactory/WoodFactory2.tscn"),
					load("res://Buildings/WoodFactory/WoodFactory3.tscn"),
					load("res://Buildings/WoodFactory/WoodFactory4.tscn"),
					load("res://Buildings/WoodFactory/WoodFactory5.tscn")
				]
				
				# создаем новый инстанс
				var upgraded_building = building_upgrades[upgrade_level - 1].instantiate()
				
				# запоминаем позицию
				upgraded_building.global_position = global_position
				
				# передаем уровень в новую сцену
				upgraded_building.upgrade_level = upgrade_level
				print(building_type, upgrade_level)
				
				# заменяем текущую сцену
				var parent = get_parent()
				parent.add_child(upgraded_building)
				queue_free()
				
				upgrade_menu.wood_upgrade_level += 1
				ui.upgrade_wood()
		
		upgrade_menu.update_bar() # обновить бар

func _on_timer_timeout():
	if building_type == "wood":
		ui.add_wood() # добавляем дерево
	if building_type == "stone":
		ui.add_stone() # добавляем камень
	else:
		return
