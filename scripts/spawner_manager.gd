extends Node
class_name SpawnerManager

@onready var spawner_box_group: Node = %SpawnerBoxGroup

var spawner_list: Array[Node]
var spawn_position_y := 86
var spawn_position_x := 527

func create_spawner(dificult: int) -> void:
	for i in dificult:
		var spawner_scn : PackedScene = load("res://entities/spawner_box.tscn")
		var spawner_box := spawner_scn.instantiate()
		spawner_list.push_front(spawner_box)
		add_child(spawner_box)
		spawner_box.position = Vector2(spawn_position_x + (i * 150) , spawn_position_y)
	
func remove_spawner() -> void:
	for item in spawner_list:
		if item:
			item.queue_free()
