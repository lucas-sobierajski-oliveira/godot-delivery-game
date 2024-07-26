extends Node
class_name LevelManager

@onready var timer: Timer

func _ready() -> void:
	timer = Timer.new()
	add_child(timer)
	timer.timeout.connect(timeout)
	start_timer()

func start_timer() -> void:
	timer.start(1)
	
func pause_timer() -> void:
	timer.stop()

func timeout() -> void:
	# checkScor
	#print(1000 % Globals.score == 0)
	print(int(Globals.score) % 1000)
	if Globals.score > 0 and Globals.score % 1000 == 0:
		Globals.end_level.emit()
		await get_tree().create_timer(1).timeout
		Globals.start_level.emit()
		
	Globals.add_score.emit(100)
	
	
