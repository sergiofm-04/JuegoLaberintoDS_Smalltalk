"
Define el estado del Ente con vidas=0.
"
Class {
	#name : #Muerto,
	#superclass : #EstadoEnte,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Muerto >> actua:unBicho [
	"Los muertos no actúan"
]

{ #category : #'as yet unclassified' }
Muerto >> atacar:alguien [
	"Los muertos no atacan"
]
