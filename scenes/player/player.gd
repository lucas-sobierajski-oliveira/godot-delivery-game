extends CharacterBody2D

@export var player_resource: PlayerResource

func _physics_process(delta: float) -> void:
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down").normalized()
	
	if direction:
		velocity = direction * player_resource.speed
	else:
		velocity.x = move_toward(velocity.x, 0, player_resource.speed)

	move_and_slide()
