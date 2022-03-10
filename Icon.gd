extends Node

func _ready() -> void:
	_go($Linear, Tween.TRANS_LINEAR)
	_go($Spring, Tween.TRANS_SPRING)

func _go(c: CanvasItem, tt) -> void:
	var t := Tween.new();
	add_child(t)
	t.interpolate_property(c, "position",
		null, Vector2(c.position.x + 200, c.position.y),
		3.333, tt, Tween.EASE_OUT, 1)
	t.start()
