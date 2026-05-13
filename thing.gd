extends RigidBody2D

#scene starts with block moving <-- (block speed)
var speed = 300

func _spring():
	pass

#mass = Gamestate.block_mass
#meow
#init baby

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	linear_velocity.x = -500
	Gamestate.block_velocity = linear_velocity.x

func _process(delta: float) -> void:
	if Input.is_action_pressed("increase_mass"):
		mass += 1
		#Gamestate.block_mass = mass
		#print(mass)
	#
	#var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var velocity = direction * speed
