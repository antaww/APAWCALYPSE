extends CanvasLayer

@onready var DebugLabel: RichTextLabel = $DebugLabel
@onready var InteractibleLabel: Label = $InteractibleLabel

func _enter_tree():
	Global.in_game_ui = self


func _process(_delta):
	var _text: String = ""
	_text += Global.version + "\n"
	_text += "FPS: " + str(Engine.get_frames_per_second()) + "\n"
	_text += "Time: " + str(snapped(Global.game.time, 0.01)) + "\n"
	_text += "Score: " + str(Global.game.score) + "\n"
	_text += "Wave: " + str(Global.game.wave) + "\n"
	
	if Global.players.size() > 0:
		_text += "Money: " + str(Global.players[0].money) + "\n"
		_text += "Health: " + str(Global.players[0].health) + "\n"
	
	DebugLabel.text = _text
