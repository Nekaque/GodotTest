extends Node2D

var speed : int = 1000
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta : float):
	position.y += delta * speed
	pass


func _on_area_2d_body_entered(body : Node2D):
	GameManager.add_score()
	queue_free()
	pass # Replace with function body.
