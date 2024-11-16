extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_local_x(3)
	if position.x > get_viewport().size.x:
		position.x = 0
		$Splash.play()
	pass
