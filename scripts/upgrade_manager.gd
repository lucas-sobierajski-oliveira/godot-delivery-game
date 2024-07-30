extends Node
class_name UpgradeManager

@onready var upgrade_view: Control = %UpgradeView

func show_upgrade_view() -> void:
	upgrade_view.visible = true

func add_upgrade(value: int) -> void:
	upgrade_view.visible = false
	Globals.start_level.emit()
