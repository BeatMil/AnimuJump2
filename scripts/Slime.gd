extends RigidBody2D

# config
var speed = -1200
var is_moving = true


# Signal
signal ded


func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	pass


func _integrate_forces(_state):
	if is_moving:
		linear_velocity = Vector2(speed, linear_velocity.y)


func _on_Slime_body_entered(body: Node):
	if body.is_in_group("chiichan"):
		hitted()


func _on_VisibilityNotifier2D_screen_exited():
	emit_signal("ded")
	queue_free()


func hitted():
	is_moving = false
	apply_impulse(Vector2.ZERO, Vector2(1500, -2000))
	apply_torque_impulse(500000)
