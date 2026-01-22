extends Node

var 컵케이크씬 = preload("res://scene/컵케이크.tscn")

func _on_timer_timeout() -> void:
	var 인스턴스 = 컵케이크씬.instantiate()
	인스턴스.position = Vector2(194 + randi() % 129, 0)
	add_child(인스턴스)
