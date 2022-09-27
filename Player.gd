extends KinematicBody2D

const _GRAVITY := 100
const _SPEED := 100
const _JUMP := 200

var _velocity := Vector2.ZERO

onready var animation := get_node('Green')
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta:float)->void:
	_velocity.y = 0.0 if is_on_floor() else _velocity.y + _GRAVITY * delta
	var input := Vector2.ZERO
	input.x = Input.get_axis("move_left", "move_right")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		_velocity.y = - _JUMP
		
	_velocity.x = input.x * _SPEED
	
	move_and_slide(_velocity, Vector2.UP)
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
