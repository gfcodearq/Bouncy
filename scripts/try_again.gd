extends Button


func _pressed():
	$click_sound.play()
	if Game.level1:
		Game.bounce = 0
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level1.tscn")
	if Game.level2:
		Game.bounce = 0
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level2.tscn")
	if Game.level3:
		Game.bounce = 0
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level3.tscn")
	if Game.level4:
		Game.bounce = 0
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level4.tscn")
	if Game.level5:
		Game.bounce = 0
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level5.tscn")
	if Game.level6:
		Game.bounce = 0
		Game.reset_time()
		get_tree().change_scene("res://scenes/Level6.tscn")
