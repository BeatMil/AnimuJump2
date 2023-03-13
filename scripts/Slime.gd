extends RigidBody2D

var speed = -300
var is_moving = true


func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	pass


func _integrate_forces(_state):
	if is_moving:
		linear_velocity = Vector2(speed, linear_velocity.y)


func _on_Slime_body_entered(body: Node):
	if body.is_in_group("chiichan"):
		is_moving = false
		apply_impulse(Vector2.ZERO, Vector2(1500, -2000))
		apply_torque_impulse(500000)
