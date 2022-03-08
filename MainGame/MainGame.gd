extends Control

export(int) var countdownMax
var currentTimer


func _ready():
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("GAME OVER")

func _process(delta):
	$HUD/CurrentScore.text = str (GlobalVariables.scoringInformation["currentScore"])
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



