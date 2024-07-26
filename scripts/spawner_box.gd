extends RayCast2D

var timer: Timer

const static_car = preload("res://entities/static_car.tscn")

func _ready() -> void:
	start_timer(1)
	
func start_timer(wait_time: int) -> void:
	timer = Timer.new()
	add_child(timer)
	timer.timeout.connect(spawn_timer)
	timer.start(wait_time)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func spawn_timer() -> void:
	var min_spawn_range_y_value := position.y
	var max_spawn_range_y_value := target_position.y
	randomize()
	var random_spawn_y := randi_range(min_spawn_range_y_value, min_spawn_range_y_value + max_spawn_range_y_value)
	randomize()
	var random_velocity := randi_range(50, 300)
	
	var car := static_car.instantiate()
	get_parent().add_child(car)
	car.linear_velocity.x -= random_velocity
	car.position = Vector2(position.x, random_spawn_y)
