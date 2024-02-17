extends RigidBody3D

var velocity = Vector3(0,0,5)
var speed = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	set_linear_velocity(velocity * speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_velocity(_velocity):
	velocity = _velocity
