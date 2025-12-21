extends Node2D

@export var speed: float = 5.0
@export var x_pos: float = 346.0

var tween: Tween

func _ready():
	move_to_x(0.0)

func move_to_x(target_x: float):
	if tween:
		tween.kill()
		position.x = x_pos

	var distance: float = abs(position.x - target_x)
	var time: float = distance / speed

	tween = get_tree().create_tween()
	tween.set_trans(Tween.TRANS_LINEAR)
	tween.tween_property(self, "position:x", target_x, time)
	tween.finished.connect(func():
		move_to_x(0.0)
	)
