extends CanvasLayer


#notifies the 'Main' scene that the start button has been progressed
signal start_game

func show_message(text):
	$Message.text = (text)
	$Message.show()
	$MessageTimer.start()
	
func game_over():
	show_message("Game Over")
# Wait for timer to end
	await $MessageTimer.timeout
	
	$Message.show("Dodge The Creeps!")
	$Message.show()
#Male a one- shot timer and wait for it to finish 
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()




func update_score(score):
	$ScoreLabel.text = str(score)



func _on_message_timer_timeout():
	$Message.hide


func _on_start_button_pressed():
	$StartButton.hide
	start_game.emit()
