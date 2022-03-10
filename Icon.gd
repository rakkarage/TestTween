extends Sprite

const _end := 1024 - 32
const _delay := 1
const _time := 0.333

func _ready():
	var t := Tween.new();
	add_child(t)
	t.interpolate_property(self, "position",
		position, Vector2(position.x + 200, position.y), _time,
		Tween.EASE_OUT, Tween.TRANS_SPRING, _delay)
	t.start()
