extends Control

# переменные для вычисления ресурса
var stone := false
var castle := false
var wood := false

var stone_upgrade_level = 0
var castle_upgrade_level = 0
var wood_upgrade_level = 0

@onready var atlas = $TextureRect/UpgradeBar.texture

@onready var stone_label = $TextureRect/Stone
@onready var wood_label = $TextureRect/Wood

func _ready():
	$".".hide() # скрывает меню

# показывает меню апгрейда и перемещает в нужную позицию
func show_upgrade():
	$".".show()
	if stone: # позиция меню если курсор на фабрике камня
		position.y = 130
		position.x = 65
		if stone_upgrade_level == 0:
			stone_label.text = "0"
			wood_label.text = "0"
		if stone_upgrade_level == 1:
			stone_label.text = "1"
			wood_label.text = "1"
		if stone_upgrade_level == 2:
			stone_label.text = "2"
			wood_label.text = "2"
		if stone_upgrade_level == 3:
			stone_label.text = "3"
			wood_label.text = "3"
		if stone_upgrade_level == 4:
			stone_label.text = ""
			wood_label.text = ""
	if castle:  # позиция меню если курсор на замке
		position.y = 130
		position.x = 146
		if castle_upgrade_level == 0:
			stone_label.text = "0"
			wood_label.text = "0"
		if castle_upgrade_level == 1:
			stone_label.text = "1"
			wood_label.text = "1"
		if castle_upgrade_level == 2:
			stone_label.text = "2"
			wood_label.text = "2"
		if castle_upgrade_level == 3:
			stone_label.text = "3"
			wood_label.text = "3"
		if castle_upgrade_level == 4:
			stone_label.text = ""
			wood_label.text = ""
	if wood: # позиция меню если курсор на фабрике дерева
		position.y = 130
		position.x = 228
		if wood_upgrade_level == 0:
			stone_label.text = "0"
			wood_label.text = "0"
		if wood_upgrade_level == 1:
			stone_label.text = "1"
			wood_label.text = "1"
		if wood_upgrade_level == 2:
			stone_label.text = "2"
			wood_label.text = "2"
		if wood_upgrade_level == 3:
			stone_label.text = "3"
			wood_label.text = "3"
		if wood_upgrade_level == 4:
			stone_label.text = ""
			wood_label.text = ""
	update_bar() # обновить апгрейд бар

# скрывает меню и сбрасывает переменные всех зданий
func hide_upgrade():
	$".".hide()
	stone = false
	castle = false
	wood = false

func update_bar():
	if stone:
		if stone_upgrade_level == 0:
			atlas.region.position = Vector2(3, 133)
		if stone_upgrade_level == 1:
			atlas.region.position = Vector2(3, 138)
		if stone_upgrade_level == 2:
			atlas.region.position = Vector2(3, 143)
		if stone_upgrade_level == 3:
			atlas.region.position = Vector2(3, 148)
		if stone_upgrade_level == 4:
			atlas.region.position = Vector2(3, 153)
	
	if castle:
		if castle_upgrade_level == 0:
			atlas.region.position = Vector2(3, 133)
		if castle_upgrade_level == 1:
			atlas.region.position = Vector2(3, 138)
		if castle_upgrade_level == 2:
			atlas.region.position = Vector2(3, 143)
		if castle_upgrade_level == 3:
			atlas.region.position = Vector2(3, 148)
		if castle_upgrade_level == 4:
			atlas.region.position = Vector2(3, 153)
	
	if wood:
		if wood_upgrade_level == 0:
			atlas.region.position = Vector2(3, 133)
		if wood_upgrade_level == 1:
			atlas.region.position = Vector2(3, 138)
		if wood_upgrade_level == 2:
			atlas.region.position = Vector2(3, 143)
		if wood_upgrade_level == 3:
			atlas.region.position = Vector2(3, 148)
		if wood_upgrade_level == 4:
			atlas.region.position = Vector2(3, 153)
