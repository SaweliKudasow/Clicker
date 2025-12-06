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

var region_size = Vector2(21, 5)

func _ready():
	rect.texture = rect.texture.duplicate()

func _process(_delta):
	var level = Upgrades.get_level(HoveredBuilding.building, bar_type)
	rect.texture.region = Rect2(bar_upgrades[level], region_size)
