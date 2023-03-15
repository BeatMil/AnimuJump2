extends Area2D


func _on_Attack01_hitbox_body_entered(body):
	print("body: %s"%[body])
	body.hitted()


func _on_Timer_timeout():
	queue_free()
