extends Control
var score = 0 


func _ready():
	pass 
func _process(delta):
	pass
func addpoint(): 
	score += 1
func subpoint():
	score -= 1
func reset():
	score = 0 
func update():
	$lblout.text = "score: %d" % [ score ]


func _on_btnup_pressed():
	var choice = $txtpoints.text.to_lower()
	if choice == "add":
		addpoint ()
	elif choice == "sub" or choice == "subtract":
		subpoint()
	else:
		OS.alert("Invalide Choice, \nTry again!")
	update()
	


func _on_btnre_pressed():
	reset()
	update()


func _on_btnexit_pressed():
	get_tree().quit()
