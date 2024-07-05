extends Button


func _pressed():
	$click_sound.play()
	if Game.level1:
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level2.tscn")
	if Game.level2:
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level3.tscn")
	if Game.level3:
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level4.tscn")
	if Game.level4:
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level5.tscn")
	if Game.level5:
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level6.tscn")
	if Game.level6:
		Game.reset_time()
		get_tree().change_scene("res://scenes/Start.tscn")
