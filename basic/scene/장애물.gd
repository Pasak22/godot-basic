extends Area2D

const SPEED = 200

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y += SPEED * delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "자동차":
		Global.score -= 10
		print(Global.score)
		self.queue_free()
