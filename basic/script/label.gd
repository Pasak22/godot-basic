extends Label

@onready var 점수 = $"."

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	점수.text = "점수 : " + str(Global.score)
