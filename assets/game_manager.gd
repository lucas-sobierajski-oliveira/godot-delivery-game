extends Node

@export var spawner_manager: SpawnerManager
@export var upgrade_manager: UpgradeManager
@export var level_manager: LevelManager

func _ready() -> void:
	Globals.upgrade_time.connect(upgrade_time)
	Globals.start_level.connect(start_level)
	Globals.end_level.connect(end_level)
	Globals.loose_game.connect(loose_game)

func start_level() -> void:
	# iniciar a view para fazer contagem regressiva para a largada
	level_manager.start_timer()
	spawner_manager.create_spawner()
	# liberar os comandos do carro do plaeyer
	pass
	
func end_level() -> void:
	level_manager.pause_timer()
	spawner_manager.remove_spawner()
	# bloquar o carro do player
	# mensagem para informar o fim da corrida
	pass
	
func upgrade_time() -> void:
	level_manager.pause_timer()
	upgrade_manager.show_upgrade_view()
	pass
	
func loose_game() -> void:
	level_manager.pause_timer()
	spawner_manager.remove_spawner()
	# bloquar o carro do player
	# mensagem para informar que o plyer perdeu
	pass
