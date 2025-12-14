extends Node

var inventory: Control = null

func save_upgrades():
	var file = FileAccess.open("user://upgrades.save", FileAccess.WRITE)
	file.store_var(Upgrades.upgrades)

func load_upgrades():
	if FileAccess.file_exists("user://upgrades.save"):
		var file = FileAccess.open("user://upgrades.save", FileAccess.READ)
		Upgrades.upgrades = file.get_var()

func save_resources():
	var file = FileAccess.open("user://resources.save", FileAccess.WRITE)
	file.store_var({
		"stone": int(inventory.stone.text),
		"wood": int(inventory.wood.text)
	})

func load_resources():
	if FileAccess.file_exists("user://resources.save"):
		var file = FileAccess.open("user://resources.save", FileAccess.READ)
		var data = file.get_var()
		
		inventory.stone.text = str(data.get("stone", 0))
		inventory.wood.text = str(data.get("wood", 0))

func reset():
	if FileAccess.file_exists("user://upgrades.save"):
		DirAccess.remove_absolute("user://upgrades.save")
	
	if FileAccess.file_exists("user://resources.save"):
		DirAccess.remove_absolute("user://resources.save")
	
	Upgrades.upgrades = Upgrades.get_default_upgrades()

func _ready():
	load_upgrades()
