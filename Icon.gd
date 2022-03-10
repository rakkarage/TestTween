extends Sprite

func _ready():
	var t := Tween.new();
	add_child(t)
	t.interpolate_property(self, "position",
		position, Vector2(position.x + 200, position.y), 3.333,
		Tween.EASE_OUT, Tween.TRANS_SPRING, 1)
	t.start()
