extends Node

func _ready() -> void:
	_go($Linear, Tween.TRANS_LINEAR)
	_go($Spring, Tween.TRANS_SPRING)

func _go(c: CanvasItem, tt) -> void:
	var t := create_tween()
	t.set_loops()
	t.set_trans(tt).set_ease(Tween.EASE_OUT)
	t.tween_interval(1)
	t.tween_property(c, "position", Vector2(c.position.x + 200, c.position.y), 0.333)
	t.tween_interval(1)
	t.tween_property(c, "position", c.position, 0.333)
