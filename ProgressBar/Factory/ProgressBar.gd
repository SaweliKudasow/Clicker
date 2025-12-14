extends Control

var is_pressed := false
@export var value_anim: Control

@onready var duration

@onready var bar := $TextureProgressBar
var tween: Tween

func _ready():
	bar.value = 0
	bar.min_value = 0
	bar.max_value = 100


func start_bar():
	if tween and tween.is_running():
		return # уже работает
	
	bar.value = 0
	tween = create_tween()
	tween.tween_property(bar, "value", bar.max_value, duration)
	tween.finished.connect(_on_fill_complete)


func _on_fill_complete():
	var type = "manual_gain"
	value_anim.start_anim(HoveredBuilding.building, type)
	if is_pressed:
		start_bar() # запускаем заново
	else:
		bar.value = 0 # сбрасываем и останавливаемся


func set_pressed(state: bool):
	is_pressed = state
	if is_pressed:
		duration = Upgrades.get_value(HoveredBuilding.building, "manual_speed")
		start_bar()
	else:
		if tween:
			tween.kill()
		bar.value = 0
