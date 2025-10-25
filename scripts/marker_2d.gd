extends Marker2D

const mala = preload("res://actors/maleta.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("maleta"):
		var mala_s_a = mala.instantiate()
		get_tree().root.add_child(mala_s_a)
		mala_s_a.global_position = global_position
