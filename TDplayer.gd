extends CharacterBody2D


const SPEED = 100.0  # 80.0
# const JUMP_VELOCITY = -400.0
const MAX_OBTAINABLE_HEALTH = 400.0

enum STATES { IDLE = 0, DEAD, DAMAGED, ATTACKING, CHARGING }

@export var data = {
	"max_health": 60.0,  # 20hp per heart; 5 per fraction
	"health": 60.0,      # Min 60 Max 400
	"money": 0,
	"secondaries": [],
	"state": STATES.IDLE 
}

var inertia = Vector2()
var look_direction = Vector2.DOWN  # (0, 1)
var attack_direction = Vector2.DOWN
var animation_lock = 0.0 #locks player while playing attack animation

var slash_scene = preload("res://Entites/attacks/slash.tscn")
var menu_scene = preload("res://my_gui.tscn")
var menu_instance = null

@onready var p_HUD = get_tree().get_first_node_in_group("HUD")

func get_direction_name():
	return["right", "down", "left", "up"][
		int(round(ook_direction.angle()*2 / PI)) % 4
	]

func attack():
	data.state = STATES.ATTACKING
	$AnimatedSprite2D.play("swipe_" + get_direction_name())
	attack_direction = look_direction 
	var slash = slash_scene.instantiate()
	slash.position = attack_direction * 20.0
	slash.rotation = Vector2().angle_to_point(-attack_direction)
	add_child(slash)
	animation_lock = 0.2

func pickup_money(value):
	data.money += value
	
func pickup_heart(value):
	data.health += value

func _ready():
	p_HUD.show()
	menu_instance = menu_scene.instantiate()
	get_tree().get_root().add_child.call_deferred(menu_instance)
	menu_instance.hide()

func _physics_process(delta):
	var direction = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	).normalized()  # Scale to 1 to prevent speed boost
	update_animation(direction)
	if direction.length() > 0:
		look_direction = direction
		velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2(), SPEED)
	
	velocity += inertia
	move_and_slide()
	inertia = inertia.move_toward(Vector2(), delta * 1000.0)
	
	if data.state != STATES.DEAD:
		if Input.is_action_just_spressed("ui_accept"):
			attack()
	
	
	if Input.is_action_just_pressed("ui_cancel"):
		menu_instance.show()
		get_tree().paused = true


func update_animation(direction):
	var a_name = "idle_down"  # Default
	if direction.length() > 0:
		look_direction = direction
		a_name = "walk_"
		if direction.x != 0:
			a_name += "side"
			$AnimatedSprite2D.flip_h = direction.x < 0
		elif direction.y < 0:
			a_name += "up"
		elif direction.y > 0:
			a_name += "down"
		$AnimatedSprite2D.play()
	else:
		if look_direction.x != 0:
			a_name = "idle_side"
			$AnimatedSprite2D.flip_h = look_direction.x < 0
		elif look_direction.y < 0:
			a_name = "idle_up"
		elif look_direction.y > 0:
			a_name = "idle_down"
	
	if $AnimatedSprite2D.animation != a_name:
		$AnimatedSprite2D.animation = a_name








