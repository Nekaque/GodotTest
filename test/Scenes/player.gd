extends Node2D

var speed : int = 1500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta : float):
	
	if Input.is_key_pressed(KEY_RIGHT):
		position.x += delta * speed
	if Input.is_key_pressed(KEY_LEFT):
		position.x -= delta * speed
	
	if position.x > get_viewport().size.x:
		position.x = 0
		$Splash.play()
	if position.x < 0:
		position.x = get_viewport().size.x
		$Splash.play()
	pass
