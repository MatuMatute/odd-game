extends Node

# Declaro nodos importantes de la interfaz
@onready var ronda_display = $"/root/Interfaz/fishing_interface/Ronda"
@onready var puntuacion_display = $"/root/Interfaz/fishing_interface/Puntuacion"

# Variables que controlan el gameplay
var ronda = 1
var puntuacion = 0

func _ready() -> void:
	actualizar_puntuacion(0)
	actualizar_ronda(ronda)

func actualizar_puntuacion(cantidad: int):
	puntuacion += cantidad
	puntuacion_display.text = "Puntuación: " + str(puntuacion)

func actualizar_ronda(ronda_actual: int):
	ronda = ronda_actual
	ronda_display.text = "Ronda: " + str(ronda)
