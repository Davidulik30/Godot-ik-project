extends KinematicBody


# Declare member variables here. Examples:
var pressing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass
	
func _input(event):
		if event is InputEventMouseMotion:
			if pressing == true:
				var camera = get_node("/root/Spatial/Camera")
				var from = camera.project_ray_origin(event.position);
				var to = from + camera.project_ray_normal(event.position) * 16;
				get_node("/root/Spatial/Cube").global_transform.origin = Vector3(to.x,to.y,0);
				print (to)	
pass


func _on_Area_input_event(camera, event, click_position, click_normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed == true:
			pressing = true
		else:
			pressing = false
	pass # Replace with function body.
