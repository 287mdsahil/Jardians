extends RigidBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

# warning-ignore:unused_argument
func _process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if(body.is_in_group("Brick")):
			body.queue_free()
		elif(body.get_name() == "Paddle"):
			var speed = linear_velocity.length()
			print(get_global_position())
			print(body.get_node("Anchor").get_global_position())
			var dir = get_global_position() - body.get_node("Anchor").get_global_position()
			dir = dir.normalized()
			var velocity = dir*speed
			linear_velocity = velocity
