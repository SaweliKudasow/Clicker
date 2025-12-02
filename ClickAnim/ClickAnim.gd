extends Node2D

@onready var anim := $AnimatedSprite2D # получаем компонент анимации
# var mouse_over := false

#func _process(_delta):
	## если мышка на здании и зажата
	#if mouse_over == true and Input.is_action_pressed("click_left"):
		#anim.global_position = get_global_mouse_position() # анимация перемещается к курсору
		#
		## показываем и играем анимацию
		#anim.show()
		#anim.play("default")
	#else:
		## останавливаем и скрываем анимацию
		#anim.stop()
		#anim.hide()

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
