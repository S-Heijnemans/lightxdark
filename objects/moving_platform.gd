extends Path2D

## If the path is a closed loop
@export var loop = false
@export var speed = 2.0
@export var speed_scale = 1.0


@onready var path = $PathFollow2D
@onready var animation = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not loop:
		animation.play("move_vertical")
		animation.speed_scale = speed_scale
		set_process(false)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	path.progress += speed
