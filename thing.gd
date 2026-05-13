extends RigidBody2D

# store initial position so we can reset to it
# when we rerun the simulation
#var initial_pos = Vector2(929.0, 526.0)

func _spring():
	pass

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# get initial position
	#initial_pos = global_position
	# reset values
	angular_velocity = 0.0
	linear_velocity = Vector2.ZERO
	#global_position = initial_pos
	print(Gamestate.block_velocity)
	#linear_velocity.x = -(Gamestate.block_velocity)
	linear_velocity.x = -500.
	#mass = Gamestate.block_mass
	mass = 500.

func _process(delta: float) -> void:
	pass
