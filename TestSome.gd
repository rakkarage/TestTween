extends Node

@onready var _option := $OptionButton

func _ready() -> void:
	_option.connect("item_selected", _some)
	_some()

func _some() -> void:
	var et = _option.selected
	_go($Sprite2D1, et, Tween.TRANS_LINEAR)
	_go($Sprite2D2, et, Tween.TRANS_SINE)
	_go($Sprite2D3, et, Tween.TRANS_QUINT)
	_go($Sprite2D4, et, Tween.TRANS_QUART)
	_go($Sprite2D5, et, Tween.TRANS_QUAD)
	_go($Sprite2D6, et, Tween.TRANS_EXPO)
	_go($Sprite2D7, et, Tween.TRANS_ELASTIC)
	_go($Sprite2D8, et, Tween.TRANS_CUBIC)
	_go($Sprite2D9, et, Tween.TRANS_CIRC)
	_go($Sprite2D10, et, Tween.TRANS_BOUNCE)
	_go($Sprite2D11, et, Tween.TRANS_BACK)
	_go($Sprite2D12, et, Tween.TRANS_SPRING)

func _go(c: CanvasItem, et: Tween.EaseType, tt: Tween.TransitionType) -> void:
	var t := create_tween()
	t.set_loops()
	t.set_ease(et).set_trans(tt)
	t.tween_interval(1)
	t.tween_property(c, "position", Vector2(c.position.x + 416, c.position.y), 2.2)
	t.tween_interval(1)
	t.tween_property(c, "position", c.position, 2.2)
