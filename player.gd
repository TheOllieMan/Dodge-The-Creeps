extends Area2D

@export var speed = 400 #how fast the player will move in PPS
var screen_size #Size of the Game Window 

func _ready():
	screen_size = get_viewport_rect().size

