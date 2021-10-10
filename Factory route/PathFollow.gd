extends PathFollow


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 0.1;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if get_offset() < 43:
		set_offset(get_offset()+speed +delta)
	
	
	pass
