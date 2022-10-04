extends KinematicBody2D

const _GRAVITY := 100
const _SPEED := 100
const _JUMP := 200


var _velocity := Vector2.ZERO
var _score := 0

func _ready():
	$Camera2D/Return.visible = false

onready var _sprite := get_node('Green')

func _physics_process(delta:float)->void:
	_velocity.y = 0.0 if is_on_floor() else _velocity.y + _GRAVITY * delta
	var input := Vector2.ZERO
	input.x = Input.get_axis("move_left", "move_right")
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		_velocity.y = - _JUMP
		
	_velocity.x = input.x * _SPEED
	
	move_and_slide(_velocity, Vector2.UP)
	
	_sprite.scale.x = -1 if input.x < 0 else 1
	_sprite.playing = input.x !=0
	
	if (_score == 100):
		$Camera2D/Return.visible = true
		
	
