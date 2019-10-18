extends KinematicBody2D

const ball_scene = preload("res://MiniScenes/Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	set_process_input(true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _physics_process(delta):
	position = Vector2(get_viewport().get_mouse_position().x,position.y)
	
func _input(event):
	if event.is_pressed():
		var ball = ball_scene.instance()
		ball.position = Vector2(position.x,480)
		get_tree().root.add_child(ball)