extends Node3D

var ProjectilePath = preload("res://Projectile/Projectile.tscn")

var cooldown = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	cooldown -= delta
	if cooldown <= 0:
		cast_spell()
		cooldown = 3
	
func cast_spell():
	var Spell = ProjectilePath.instantiate()
	Spell.position = $SpawnPosition.position
	Spell.velocity = $SpawnPosition.global_position - get_global_position()
	print($SpawnPosition.global_position, get_global_position())
	add_child(Spell)
	
	

