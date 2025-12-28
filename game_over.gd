extends Node2D

func all_upgrades_max_level(upgrades: Dictionary) -> bool:
	for building in upgrades.values():
		for upgrade in building.values():
			if upgrade.get("level", -1) != 10:
				return false
	return true
