extends RigidBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var position

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("ui_accept"):
		apply_impulse(Vector3(0,-0.5,0),Vector3(0,0,-0.5))
		print("AAA")
	
	pass
