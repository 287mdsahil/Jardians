extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _physics_process(delta):
	position = Vector2(get_viewport().get_mouse_position().x,position.y)