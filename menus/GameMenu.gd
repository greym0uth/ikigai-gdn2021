extends CenterContainer

signal resume_clicked
signal return_clicked
signal restart_clicked
signal quit_clicked

func _process(delta):
  if Input.is_action_just_pressed("menu"):
    _on_resume()

func _on_resume():
  emit_signal("resume_clicked")

func _on_return():
  emit_signal("return_clicked")

func _on_restart():
  emit_signal("restart_clicked")

func _on_quit():
  emit_signal("quit_clicked")
