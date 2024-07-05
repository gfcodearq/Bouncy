extends Node2D

var seconds = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$music_level.play()
	Game.update_bounce()
	Signals.emit_signal("level3")

func _process(delta):
	$text_bounce.text = "Rebotes: " + String(Game.bounce)
	$text_time.text =  "Tiempo: " + String(seconds)


func _on_level_time_timeout():
	seconds += 1
	Signals.emit_signal("time")
