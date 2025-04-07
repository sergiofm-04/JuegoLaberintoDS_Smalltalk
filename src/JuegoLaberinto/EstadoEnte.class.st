"
Interfaz de los estados de un Ente (Vivo o Muerto).
"
Class {
	#name : #EstadoEnte,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
EstadoEnte >> actua:unBicho [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
EstadoEnte >> atacar:alguien [
	self subclassResponsibility
]
