extends Area2D

signal score_increase(amount)
	
func _on_body_entered(_body):
	$CollisionShape2D.set_deferred('disabled', true)
	emit_signal("score_increase", 50)
