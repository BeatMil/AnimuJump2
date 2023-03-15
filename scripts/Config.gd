extends Node


func _input(_event):
	if Input.is_key_pressed(KEY_F4):
		OS.window_fullscreen = not OS.is_window_fullscreen()
