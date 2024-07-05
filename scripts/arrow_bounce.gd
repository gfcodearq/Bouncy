extends KinematicBody2D

var velocity
var moves = Vector2()
var masa = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = 0
	Signals.connect("active_arrow",self,"in_zone")
	Signals.connect("collision_arrow",self,"collision_arrow")
	

func _physics_process(delta):

	moves.x = velocity
	
	move_and_slide(moves,Vector2(0,-1))


func in_zone():
	update_position()
	velocity = 200

func collision_arrow():
	update_position()

func update_position():
	velocity = 0
	if Game.level1:
		position.x = -65
		position.y = 263
	if Game.level3:
		position.x = -135	
		position.y = 462



func _on_Area2D_area_entered(area):
	if area.is_in_group("goal"):
		update_position()
