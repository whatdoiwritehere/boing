extends Area2D



var direction: Vector2
const SPEED = 16

func _physics_process(delta: float) -> void:
	global_position += direction * SPEED
	




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("blue affected"):
		queue_free()
		body.queue_free()
