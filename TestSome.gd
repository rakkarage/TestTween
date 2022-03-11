extends Node

func _ready() -> void:
	_go($Sprite2D1, Tween.EASE_OUT, Tween.TRANS_LINEAR)
	_go($Sprite2D2, Tween.EASE_OUT, Tween.TRANS_SINE)
	_go($Sprite2D3, Tween.EASE_OUT, Tween.TRANS_QUINT)
	_go($Sprite2D4, Tween.EASE_OUT, Tween.TRANS_QUART)
	_go($Sprite2D5, Tween.EASE_OUT, Tween.TRANS_QUAD)
	_go($Sprite2D6, Tween.EASE_OUT, Tween.TRANS_EXPO)
	_go($Sprite2D7, Tween.EASE_OUT, Tween.TRANS_ELASTIC)
	_go($Sprite2D8, Tween.EASE_OUT, Tween.TRANS_CUBIC)
	_go($Sprite2D9, Tween.EASE_OUT, Tween.TRANS_CIRC)
	_go($Sprite2D10, Tween.EASE_OUT, Tween.TRANS_BOUNCE)
	_go($Sprite2D11, Tween.EASE_OUT, Tween.TRANS_BACK)
	_go($Sprite2D12, Tween.EASE_OUT, Tween.TRANS_SPRING)

func _go(c: CanvasItem, et: Tween.EaseType, tt: Tween.TransitionType) -> void:
	var t := create_tween()
	t.set_loops()
	t.set_ease(et).set_trans(tt)
	t.tween_interval(1)
	t.tween_property(c, "position", Vector2(c.position.x + 416, c.position.y), 2.2)
	t.tween_interval(1)
	t.tween_property(c, "position", c.position, 2.2)
