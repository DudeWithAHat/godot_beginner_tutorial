extends CharacterBody2D

var direction = 1
const SPEED = 50.0
const JUMP_VELOCITY = -400.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if not ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
		
	if not ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += delta * SPEED * direction
