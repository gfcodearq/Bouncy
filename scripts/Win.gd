extends Control

func _ready():
	$sound_win.play()
	show_score()

func show_score():
	$text_bounce.text = "Realizaste: " + String(Game.bounce) + " rebotes"
	$text_time.text = "Tu tiempo fue de: " + String(Game.time) + " segundos"
	





