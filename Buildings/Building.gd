extends Area2D

@onready var sprite = $Sprite2D # изначальный спрайт
@onready var timer = $Timer # таймер
@export var building_type: String # тип здания
@export var normal_texture: Texture2D # обычная текстура
@export var hover_texture: Texture2D # текстура обводки

var mouse_over := false # находится ли мышка на здании

func _ready():
	sprite.texture = normal_texture

func _on_mouse_entered():
	sprite.texture = hover_texture
	Global.mouse_over = self

func _on_mouse_exited():
	sprite.texture = normal_texture
	if Global.mouse_over == self:
		Global.mouse_over = null

func _process(_delta):
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
		get_node("../UI").add_wood()
	if building_type == "stone":
		get_node("../UI").add_stone()
	else:
		return
