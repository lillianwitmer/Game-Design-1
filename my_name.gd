extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	$Label.text = " Lilli Witmer "
	pass # Replace with function body.


func _on_btnclear_pressed():
	$Label.text = ""
	pass # Replace with function body.
