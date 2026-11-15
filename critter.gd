extends Node2D
var color = -1
@onready var anim = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("cxcsdcds"):
		color = -color
		
		if color == 1:
			anim.play("pink")
			scale.x = -1
		if color == -1:
			anim.play("default")
			scale.x = 1
