"
Es la interfaz común de los elementos del mapa.
"
Class {
	#name : #ElementoMapa,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
ElementoMapa >> entrar [
	"deberemos indicar quién entra (en un futuro)"
	self subclassResponsibility 
]
