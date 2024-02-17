extends Node3D

var Projectile = preload("res://Projectile/Projectile.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var Spell = Projectile.instantiate()
	add_child(Spell)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
