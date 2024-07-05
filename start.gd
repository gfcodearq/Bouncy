extends Button


func _pressed():
	$click_sound.play()
	get_tree().change_scene("res://scenes/Level1.tscn")
	
