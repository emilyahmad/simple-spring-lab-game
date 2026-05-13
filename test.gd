extends Node2D

# grab block so we can reinstantiate it when
# the user reruns the simulation
@export var thing : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$SpeedSlider.value = 500
	Gamestate.block_velocity = $SpeedSlider.value
	
	$MassSlider.value = 500
	Gamestate.block_mass = $MassSlider.value

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# update label as soon as user changes slider
	$Background/BlockSpeedLabel.text = str($SpeedSlider.value) + " m/s"

	$Background/MassLabel.text = str($MassSlider.value) + " kg"
	
	if Gamestate.start_simulation == true:
		Gamestate.start_simulation = false
		
		# reload player
		$thing.queue_free()
		var new_block = thing.instantiate()
		add_child(new_block)
		
		get_tree().change_scene_to_file("res://simple-spring-lab-game/test.tscn")

func _on_button_pressed() -> void:
	Gamestate.start_simulation = true
	
	# update actual velocity once user re-runs
	# that way can't change the velocity mid-simulation
	Gamestate.block_velocity = $SpeedSlider.value
	
	Gamestate.block_mass = $MassSlider.value
