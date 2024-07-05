extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	load_hearts()
	Game.hud = self

func load_hearts():
	$arrow_full.rect_size.x = Game.lives * 510
	$arrow_empty.rect_size.x = (Game.max_lives - Game.lives) * 510
	$arrow_empty.rect_position.x = $arrow_full.rect_position.x + $arrow_full.rect_size.x * $arrow_full.rect_scale.x
