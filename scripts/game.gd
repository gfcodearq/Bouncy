extends Node

var bounce = 0
var max_lives = 3
var lives = max_lives
var hud
var goal : bool = false
var level1 : bool = false
var level2 : bool = false
var level3 : bool = false
var level4 : bool = false
var level5 : bool = false
var level6 : bool = false
var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Signals.connect("goal",self,"in_goal")
	Signals.connect("bounce",self,"count_bounce")
	Signals.connect("level1",self,"in_level1")
	Signals.connect("level2",self,"in_level2")
	Signals.connect("level3",self,"in_level3")
	Signals.connect("level4",self,"in_level4")
	Signals.connect("level5",self,"in_level5")
	Signals.connect("level6",self,"in_level6")
	Signals.connect("time",self,"update_time")

func _process(delta):
	game_over()	
	win()

func count_bounce():
	bounce += 1
	print(bounce)

func lose_lives():
	lives -=1
	bounce = 0
	hud.load_hearts()

func game_over():
	if lives <= 0:
		get_tree().change_scene("res://scenes/Lose.tscn")
		lives = 3

func update_bounce():
	bounce = 0
	
func update_time():
	time += 1
	
func reset_time():
	time = 0

func in_goal():
	goal = true

func in_level1():
	level1 = true		
		
func in_level2():
	level2 = true

func in_level3():
	level3 = true

func in_level4():
	level4 = true

func in_level5():
	level5 = true

func in_level6():
	level6 = true

func win():
	if goal:
		get_tree().change_scene("res://scenes/Win.tscn")
		goal = false
