extends Node2D


const SLIME_PATH = preload("res://nodes/Slime.tscn")
onready var spawn_point = $"SpawnPosition2D"


func _ready():
	spawn_slime()


func spawn_slime():
	var slime = SLIME_PATH.instance()
	slime.position = spawn_point.position
	slime.connect("ded", self, "spawn_slime")
	add_child(slime)

