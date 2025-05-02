"
Entrar representa a la petición abrir de los elementos del mapa.
"
Class {
	#name : #Abrir,
	#superclass : #Comando,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Abrir >> ejecutar:alguien [
	self receptor abrir.
]
