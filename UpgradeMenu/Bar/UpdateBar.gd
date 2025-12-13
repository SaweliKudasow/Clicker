extends Control

@export var bar_type: String
@onready var rect = $TextureRect

var bar_upgrades = [
	Vector2(314, 59),
	Vector2(314, 65),
	Vector2(314, 71),
	Vector2(314, 77),
	Vector2(314, 83),
	Vector2(314, 89),
	Vector2(314, 95),
	Vector2(314, 101),
	Vector2(314, 107),
	Vector2(314, 113),
	Vector2(314, 119)
]

var bar_upgrade_anim = [
	Vector2(368, 65),
	Vector2(368, 71),
	Vector2(368, 77),
	Vector2(368, 83),
	Vector2(368, 89),
	Vector2(368, 95),
	Vector2(368, 101),
	Vector2(368, 107),
	Vector2(368, 113),
	Vector2(368, 119)
]

var region_size = Vector2(21, 5)

func _ready():
	rect.texture = rect.texture.duplicate()

func update(up):
	var level = Upgrades.get_level(HoveredBuilding.building, bar_type)
	
	if up:
		for i in range(3):
			rect.texture.region = Rect2(bar_upgrade_anim[level - 1], region_size)
			await get_tree().create_timer(0.1).timeout
			
			rect.texture.region = Rect2(bar_upgrades[level], region_size)
			await get_tree().create_timer(0.1).timeout
	else:
		rect.texture.region = Rect2(bar_upgrades[level], region_size)
