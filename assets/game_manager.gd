extends Node

@export var spawner_manager: SpawnerManager
@export var upgrade_manager: UpgradeManager
@export var level_manager: LevelManager

func _ready() -> void:
	Globals.start_level.connect(start_level)
	Globals.end_level.connect(end_level)
	Globals.loose_game.connect(loose_game)
	Globals.add_upgrade.connect(add_upgrade)
	start_level()

func start_level() -> void:
	# iniciar a view para fazer contagem regressiva para a largada
	level_manager.start_timer()
	spawner_manager.create_spawner(Globals.dificult)
	# liberar os comandos do carro do plaeyer
	
func end_level() -> void:
	level_manager.pause_timer()
	spawner_manager.remove_spawner()
	Globals.dificult += 1
	upgrade_manager.show_upgrade_view()
	pass
	
func loose_game() -> void:
	level_manager.pause_timer()
	spawner_manager.remove_spawner()
	# bloquar o carro do player
	# mensagem para informar que o plyer perdeu
	pass

func add_upgrade(value: int) -> void:
	upgrade_manager.add_upgrade(value)
