extends TextureButton

var deckSize = INF

func _ready():
	rect_scale *= $'../../'.CardSize / rect_size

func _gui_input(event):
	if Input.is_action_just_released("leftclick"):
		print (deckSize)
		if (deckSize > 0):
			deckSize = $'../../'.drawCard()
		if (deckSize == 0):
			disabled = true
