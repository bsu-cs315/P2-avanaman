extends Area2D

signal item_entered

func _on_Item_entered(_body):
	$CollisionShape2D.set_deferred('disabled', true)
	emit_signal("item_entered")
	queue_free()
