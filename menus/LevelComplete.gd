extends HBoxContainer

signal continue_clicked
signal return_clicked
signal quit_clicked

var quit_confirm = false
var return_confirm = false

onready var quit = get_node("VBoxContainer/Quit")
onready var return_button = get_node("VBoxContainer/Return")

func _on_quit():
  if quit_confirm:
    emit_signal("quit_clicked")
  else:
    quit_confirm = true
    quit.text = "Are you sure?"

func _on_return():
  if return_confirm:
    emit_signal("return_clicked")
  else:
    return_confirm = true
    return_button.text = "Are you sure?"

func _on_continue():
  emit_signal("continue_clicked")
