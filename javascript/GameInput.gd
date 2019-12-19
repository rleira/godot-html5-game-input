extends Node

func getKey(key: String):
	if OS.has_feature('JavaScript'):
		# keys are assumed to be stored in the global scope under a variable called game
		return JavaScript.eval("game['" + key + "'];", true)
	print("The JavaScript singleton is NOT available")
	return null