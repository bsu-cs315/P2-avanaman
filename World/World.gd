extends Node2D

var _score := 10
var _timer := 0

onready var _hud_timer := $HUD/Timer
onready var _player := $Player

func _process(_delta):
	_timer = _hud_timer.time_left
	
	if _score == 0:
		var _game_over := get_tree().change_scene()
		
	elif _timer == 0:
		var _game_over := get_tree().change_scene()
		
	func _on_Item_Entered():
		_item_collect.play()
		_score -= 1
