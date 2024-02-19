extends RigidBody3D

signal collided
var velocity = Vector3(0,0,5)
var speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	set_contact_monitor(true)
	set_linear_velocity(velocity * speed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_exited(body):
	print("collision found")
	queue_free()
	if body.is_in_group("Projectile"):
		queue_free()


func _on_body_entered(body):
	pass # Replace with function body.
