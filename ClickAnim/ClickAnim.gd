extends Node2D

@onready var anim = $AnimatedSprite2D # получаем компонент анимации

func _process(_delta):
	# если мышка на здании и зажата
	if Global.mouse_over != null and Input.is_action_pressed("click_left"):
		anim.global_position = get_global_mouse_position() # анимация перемещается к курсору
		
		# показываем и играем анимацию
		anim.show()
		anim.play("default")
	else:
		# останавливаем и скрываем анимацию
		anim.stop()
		anim.hide()
