extends Node

@export var spawner_manager: Node
@export var upgrade_manager: UpgradeManager
@export var level_manager: Node

func _ready() -> void:
	Globals.upgrade_time.connect(upgrade_time)
	Globals.start_level.connect(start_level)
	Globals.end_level.connect(end_level)
	Globals.loose_game.connect(loose_game)

func start_level() -> void:
	# configurar a distancia q tem de ser percorrida
	# iniciar a view para fazer contagem regressiva para a largada
	# configurar o timer do jogo
	# iniciar o timer
	# configurar o spawner
	# iniciar o spawenr
	# liberar os comandos do carro do plaeyer
	pass
	
func end_level() -> void:
	# parar o spawner
	# parar o timer
	# bloquar o carro do player
	# mensagem para informar o fim da corrida
	pass
	
func upgrade_time() -> void:
	upgrade_manager.show_upgrade_view()
	pass
	
func loose_game() -> void:
	# parar o spawner
	# parar o timer
	# bloquar o carro do player
	# mensagem para informar que o plyer perdeu
	pass



# chamar o upgradeManager para lhe dar com tudo q é relacionado a upgrade panel
# instancia scene
# - sortear upgrades
# - atribuir o upgrade nnos attrs do carro
# finaliza scene

# spanerManager
# configura cada nova dificuldade do spawner
# instancia o spawnerObj
# finaliza o spawnerObj
# gerencia o ciclo de vida do spawner quando o level iniciado
# - start spawn
# - stop spawn

# func levelManager
# - start Spaner
# - start timer
# - count kms
