extends Node

const INTERVAL = 5

var ttr = INTERVAL

@onready var coin: Area2D = $Coin
@onready var coin_2: Area2D = $Coin2
@onready var coin_3: Area2D = $Coin3
@onready var coin_4: Area2D = $Coin4

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ttr -= delta
	if ttr < 0:
		coin.reset()
		coin_2.reset()
		coin_3.reset()
		coin_4.reset()
		ttr = INTERVAL
	
