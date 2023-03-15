extends Node


func _ready():
	# Play on second monitor
	# # print(OS.get_current_screen())
	# OS.set_current_screen(0)
	# if OS.get_current_screen() > 1:
	# # 	OS.set_current_screen(2)
	# # print("Second monitor baby!!")
	pass


func _input(_event):
	if Input.is_key_pressed(KEY_F4):
		OS.window_fullscreen = not OS.is_window_fullscreen()
