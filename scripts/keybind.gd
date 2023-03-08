extends Node

func _input(event):
	if Input.is_key_pressed(KEY_F4):
		OS.window_fullscreen = not OS.is_window_fullscreen()
