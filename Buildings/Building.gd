extends Area2D

@onready var sprite = $Sprite2D # изначальный спрайт
@onready var timer = $Timer # таймер
@onready var upgrade_menu = get_node("../Upgrade") # меню улучшения
@export var building_type: String # тип здания
@export var normal_texture: Texture2D # обычная текстура
@export var hover_texture: Texture2D # текстура обводки

var mouse_over := false # находится ли мышка на здании

func _ready():
	sprite.texture = normal_texture

func _on_mouse_entered():
	sprite.texture = hover_texture # поменять на картинку с обводкой
	Global.mouse_over = self
	if building_type == "stone": # курсор на фабрике камня
		upgrade_menu.stone = true
	if building_type == "castle": # курсор на замке
		upgrade_menu.castle = true
	if building_type == "wood": # курсор на фабрике дерева
		upgrade_menu.wood = true
	upgrade_menu.show_upgrade() # показать апгрейд меню

func _on_mouse_exited():
	sprite.texture = normal_texture # назад на обычную картинку
	if Global.mouse_over == self:
		Global.mouse_over = null
	upgrade_menu.hide_upgrade() # скрыть апгрейд меню

func _process(_delta):
	# если курсор на здании и зажата лкм начает/останавливает таймер
	if Global.mouse_over == self and Input.is_action_pressed("click_left"):
		if not timer.is_stopped():
			return
		timer.start()
	else:
		if timer.is_stopped() == false:
			timer.stop()

func _on_timer_timeout():
	print(building_type)
	if building_type == "wood":
		get_node("../UI").add_wood() # добавляем дерево
	if building_type == "stone":
		get_node("../UI").add_stone() # добавляем камень
	else:
		return
