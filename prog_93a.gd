extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_3_pressed():
	get_tree().exit()


func _on_btncalc_pressed():
	var watts = str($txtwatts.text)
	var rate = watts * .0475
	var surc = rate * .10
	var 
