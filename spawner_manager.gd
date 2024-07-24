extends Node
class_name SpawnerManager

var spawner_list: Array[Node]

func create_spawner() -> Node:
	var spawner_obj := Node.new()
	spawner_list.push_back(spawner_obj)
	return Node.new()
	
func remove_spawner() -> void:
	for item in spawner_list:
		item.queue_free()
