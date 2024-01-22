extends Node2D

@onready var smoke = preload("res://Scenes/smoke.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	#listen for left mouse click
	if Input.is_action_pressed("left_click"):
		
		var s = smoke.instantiate()
		s.set_emitting(true)
		
		#pass the global mouse position to smoke s
		s.initialize(get_global_mouse_position())
		
		#add the smoke particle system to scene
		get_tree().current_scene.add_child(s)
