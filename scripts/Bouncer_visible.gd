extends StaticBody2D

var count_switch = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Signals.connect("switcher",self,"switch")

func _process(delta):
	invisible()

func invisible():
	if count_switch % 2 == 0:
		visible = false
	else:
		visible = true
		
func switch():
	count_switch +=1 
