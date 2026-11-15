extends CharacterBody2D

var bullet_scene1 = preload("res://blue bullet.tscn")
var bullet_scene2 = preload("res://pink bullet.tscn")
var color = -1

const SPEED = 400.0
@onready var pewpew = $pewpew


func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	velocity.x=Input.get_axis("left", "right") *SPEED
	velocity.y=Input.get_axis("up", "down") *SPEED
	
	velocity = lerp (get_real_velocity(), velocity, 0.1)
	
	if Input.is_action_just_pressed("shoot"):
		if color == -1:
		
			var bullet1 = bullet_scene1.instantiate()
			bullet1.global_position = pewpew.global_position
			bullet1.direction = (get_global_mouse_position()-global_position).normalized()
			$/root/Game.add_child(bullet1)
			
		if color == 1:
		
			var bullet2 = bullet_scene2.instantiate()
			bullet2.global_position = pewpew.global_position
			bullet2.direction = (get_global_mouse_position()-global_position).normalized()
			$/root/Game.add_child(bullet2)
			
	if Input.is_action_just_pressed("switch"):
		color = -color
		
		if color == 1:
			$AnimatedSprite2D.frame = 1
		if color == -1:
			$AnimatedSprite2D.frame = 0
	
	move_and_slide()
