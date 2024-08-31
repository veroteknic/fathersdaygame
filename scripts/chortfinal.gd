extends Node2D
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

const SPEED = 100

var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.animation = "chase"
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		animated_sprite_2d.animation = "chase"
		direction = 1
		animated_sprite_2d.flip_h = false

	position.x += direction * SPEED * delta