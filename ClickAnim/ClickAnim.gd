extends Node2D

@onready var anim := $AnimatedSprite2D # получаем компонент анимации

func _ready():
	anim.hide()

func _process(_delta):
	anim.global_position = get_global_mouse_position()

func start_anim():
	anim.show()
	anim.play("default")

func stop_anim():
	anim.stop()
	anim.hide()
