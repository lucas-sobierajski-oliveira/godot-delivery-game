extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.add_score.connect(set_score)

func set_score(value: int) -> void:
	Globals.score += value
	text = str(Globals.score)
	print(Globals.score)
