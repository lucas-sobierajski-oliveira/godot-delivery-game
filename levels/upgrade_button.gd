extends Button

func _ready() -> void:
	connect('pressed', button_pressedd)
	
func button_pressedd() -> void:
	Globals.add_upgrade.emit(200)
