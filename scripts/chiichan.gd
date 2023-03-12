extends Node2D

onready var anim_player = $AnimationPlayer


func _ready():
	anim_player.play("hopping", -1 , 0.8)


func _input(event):
	if event.is_action_pressed("ui_accept"):
		anim_player.play("attack01")


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "attack01":
		anim_player.play("hopping", -1 , 0.8)
