extends Node3D

var mouse_sensitivity := 0.001
var keys_sensitivity := 1

var twist_input := 0.0
var pitch_input := 0.0

#@onready var camera = $GodCamera
# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input:= Vector3.ZERO
	input.z = Input.get_axis("ui_up", "ui_down")
	input.x = Input.get_axis("ui_left", "ui_right")
	var base = basis
	translate(base * input * keys_sensitivity * delta)
	rotate_z(twist_input)
	rotate_x(pitch_input)
	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	twist_input = 0.0
	pitch_input = 0.0
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			twist_input = - event.relative.x * mouse_sensitivity
			pitch_input = - event.relative.y * mouse_sensitivity

	
