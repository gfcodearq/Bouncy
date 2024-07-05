extends KinematicBody2D

var velocity
var moves = Vector2()
var masa = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = 0
	Signals.connect("active_arrow",self,"in_zone")
	Signals.connect("collision_arrow_left",self,"collision_arrow_left")

func _physics_process(delta):
	
	moves.x =  - velocity 
	
	move_and_slide(moves,Vector2(0,-1))
	

func in_zone():
	update_position()
	velocity = 180

func collision_arrow_left():
	update_position()

func update_position():
	velocity = 0
	if Game.level2:
		position.x = 1037
		position.y = 427
	if Game.level3:
		position.x = 1019
		position.y = 311
	if Game.level5:
		position.x = 1038
		position.y = 223

func _on_Area2D_area_entered(area):
	if area.is_in_group("out_area"):
		update_position()
