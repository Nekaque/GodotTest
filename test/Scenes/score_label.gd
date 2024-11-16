extends RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.connect("score_changed",on_score_changed)
	text = "Score: 0"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func on_score_changed():
	text = "Score: " + str(GameManager.score)
