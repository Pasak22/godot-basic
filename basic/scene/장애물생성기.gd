extends Node

var 장애물씬 = preload("res://scene/장애물.tscn")

func _on_timer_timeout() -> void:
	var 인스턴스 = 장애물씬.instantiate()
	인스턴스.position = Vector2(194 + randi() % 129, 0)
	add_child(인스턴스)
