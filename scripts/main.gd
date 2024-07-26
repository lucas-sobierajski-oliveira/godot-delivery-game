extends Control

@onready var start_button: Button = $StartButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_button.pressed.connect(start_button_pressed)
	
func start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level.tscn")
