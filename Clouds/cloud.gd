extends Node2D

func _ready():
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position:x", 0, 30.0)
	tween.set_trans(Tween.TRANS_SINE).set_ease(Tween.EASE_OUT)
