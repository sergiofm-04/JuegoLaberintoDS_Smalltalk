"
Entrar representa a la petición entrar de los elementos del mapa.
"
Class {
	#name : #Entrar,
	#superclass : #Comando,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Entrar >> ejecutar:alguien [
	self receptor entrar:alguien.
]
