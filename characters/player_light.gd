extends CharacterBody2D
@onready var animated_sprite_2d = $AnimatedSprite2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("Jump_Light") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("Left_Light", "Right_Light")
	if direction:
		velocity.x = direction * SPEED
		animated_sprite_2d.flip_h = direction < 0
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	if not is_on_floor() and velocity.y > 0:
		animated_sprite_2d.play("Jump_start")
		animated_sprite_2d.play("Falling_down")
	elif not is_on_floor():
		animated_sprite_2d.play("Jump_loop")
	elif direction:
		animated_sprite_2d.play("Running")
	else:
		animated_sprite_2d.play("Idle")
