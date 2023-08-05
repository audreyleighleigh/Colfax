extends Node2D

var cloudSpawnerScene = ResourceLoader.load("/Volumes/easystore/ColfaxGame/CloudSpawner.tscn")
var cloudSpawnerInstance = null

func _ready():
	cloudSpawnerInstance = cloudSpawnerScene.instance()
	add_child(cloudSpawnerInstance)
