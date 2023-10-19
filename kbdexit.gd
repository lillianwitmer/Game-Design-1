extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

@export var next_level = ""

func _on_body_entered(body):
	if body.name == "kbrdplayer":
		OS.alert("You Win!")
		var level = "res://" + next_level + ".tscn" 
		get_tree().change_scene_to_file(level)
		
	
