extends Area2D
@onready var progress_bar: ProgressBar = $CollisionShape2D/ProgressBar


var direction: Vector2
const SPEED = 16
var hp = 100

#func _ready():
	#progress_bar.value = hp
func _physics_process(delta: float) -> void:
	global_position += direction * SPEED
	#progress_bar.value = hp
	



	


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("pink affected"):
		queue_free()
		body.queue_free()
