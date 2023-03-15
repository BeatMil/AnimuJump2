extends Node2D

onready var anim_player = $AnimationPlayer


func _ready():
	anim_player.play("hopping", -1 , 0.8)


func _input(event):
	if event.is_action_pressed("attack01"):
		anim_player.play("attack01")

	if event.is_action_pressed("attack02"):
		anim_player.play("attack01_b")

	if event.is_action_pressed("attack03"):
		anim_player.play("attack01_c")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "attack01" or anim_name == "attack01_b" or anim_name == "attack01_c" or anim_name == "hitted" :
		anim_player.play("hopping", -1 , 0.8)


func _on_Chiichan_body_entered(body):
	print("body: %s"%[body])

	if body.is_in_group("slime"):
		anim_player.play("hitted")
