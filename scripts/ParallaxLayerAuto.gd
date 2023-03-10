extends ParallaxLayer

export(int) var SPEED = -500


func _process(delta):
	motion_offset.x += SPEED * delta
