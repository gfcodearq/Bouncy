extends KinematicBody2D


const gravity = 9.81

var velocity = 50
var moves = Vector2()
var masa = 30
onready var arrow = $Sprite

	
func _physics_process(delta):
	moves.y += gravity * delta * masa
	
	if Input.is_action_just_pressed("ui_left"):
		moves.x = - velocity * 2	
	if Input.is_action_just_pressed("ui_right"):
		moves.x = velocity * 2
	
	move_and_slide(moves,Vector2(0,-1))


func _on_area_player_area_entered(area):
	if area.is_in_group("collision_bounce"):
		$jump.play()
		moves.y =  - velocity * 8
		Signals.emit_signal("bounce")
	if area.is_in_group("collision_bounce2"):
		$jump.play()
		moves.y = velocity * 6	
		Signals.emit_signal("bounce")
	if area.is_in_group("arrow_bounce"):
		$jump.play()
		moves.x = velocity * 6
		moves.y =  - velocity * 6
		Signals.emit_signal("collision_arrow")
	if area.is_in_group("arrow_bounce_left"):
		$jump.play()
		moves.x = - velocity * 10
		moves.y = - velocity * 6 
	if area.is_in_group("active_arrow"):
		Signals.emit_signal("active_arrow")
	if area.is_in_group("goal"):
		Signals.emit_signal("goal")
	if area.is_in_group("out_area"):
		Game.lose_lives()
		update_position()
	if area.is_in_group("collision_switcher"):
		$jump.play()
		moves.y =  - velocity * 8	
		Signals.emit_signal("switcher")
		Signals.emit_signal("bounce")
	if area.is_in_group("collision_bouncer_change"):	
		$jump.play()
		moves.y =  - velocity * 8
		Signals.emit_signal("bounce")


func update_position():
	moves.x = 0
	moves.y = 0
	if Game.level1:
		position.x = 103
		position.y = 265
	if Game.level2:
		position.x = 164
		position.y = 190
	if Game.level3:
		position.x = 142
		position.y = 93
	if Game.level4:
		position.x = 164
		position.y = 150
	if Game.level5:
		position.x = 170	
		position.y = 149
	

