extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_3_pressed():
	get_tree().quit()


func _on_btncalc_pressed():
	var watts = float($txtwatts.text)
	var rate = watts * .0475
	var surc = rate * .10
	var tax = rate * .03
	var total = tax+ surc + rate
	var late = (total * .04) + total
	$lblout.text = "Base rate = $%.2f" %rate + "\nSurcharge = $%.2f" % surc + "\nCity Tax = $%.2f" % tax +\
	"\nTotal = $%.2f" %total + "\nIf payment is late then it will cost = $%.2f" % late


func _on_btnclear_pressed():
	$txtwatts.text = ""
	$lblout.text = ""
