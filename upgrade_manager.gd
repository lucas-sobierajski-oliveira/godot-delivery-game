extends Node
class_name UpgradeManager

func _ready() -> void:
	pass

func show_upgrade_view() -> void:
	# sortear upgrade - 3 upgrades
	# instanciar a view com  os upgrades sorteados
	# vai add a scene dentro do Level.tsc
	pass

func add_upgrade(attr: String, value: int) -> void:
	# remove a scene dos upgrades
	# get player e add valores novos no resource player
	Globals.start_level.emit()
