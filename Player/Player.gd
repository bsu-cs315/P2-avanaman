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
	var _velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		_velocity.x += 1
	if Input.is_action_pressed("move_left"):
		_velocity.x -= 1
	if Input.is_action_pressed("jump"):
		_velocity.y -= 1
	
	move_and_slide(_velocity, Vector2.UP)
	
	if (_score == 100):
		$Camera2D/Return.visible = true
		
	
