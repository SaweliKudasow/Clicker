extends Node2D

@onready var anim := $AnimatedSprite2D # получаем компонент анимации
@onready var timer := $Timer
@onready var click_sound :=$"../ClickSound2"

func _ready():
	anim.hide()

func _process(_delta):
	anim.global_position = get_global_mouse_position()

func start_anim():
	anim.show()
	anim.play("default")
	timer.start()

func stop_anim():
	anim.stop()
	anim.hide()
	timer.stop()

func _on_timer_timeout():
	click_sound.stop()
	click_sound.play()
