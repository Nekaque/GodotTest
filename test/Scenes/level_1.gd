extends Node2D

var pizza_scene: PackedScene = preload("res://Scenes/Pizza.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pizza_timer_timeout():
	var new_pizza = pizza_scene.instantiate()
	add_child(new_pizza)
	new_pizza.position.y = 0
	new_pizza.position.x = randi_range(0,get_viewport().size.x)
	pass # Replace with function body.