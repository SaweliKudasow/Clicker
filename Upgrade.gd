extends Control

# переменные для вычисления ресурса
var stone := false
var castle := false
var wood := false

func _ready():
	$".".hide() # скрывает меню

# показывает меню апгрейда и перемещает в нужную позицию
func show_upgrade():
	$".".show()
	if stone: # позиция меню если курсор на фабрике камня
		position.y = 160
		position.x = 90
	if castle:  # позиция меню если курсор на замке
		position.y = 160
		position.x = 176
	if wood: # позиция меню если курсор на фабрике дерева
		position.y = 160
		position.x = 252

# скрывает меню и сбрасывает переменные всех зданий
func hide_upgrade():
	$".".hide()
	stone = false
	castle = false
	wood = false
