"
Decorator es la interfaz común de los decoradores.
"
Class {
	#name : #Decorator,
	#superclass : #Hoja,
	#instVars : [
		'em'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Decorator >> em [

	^ em
]

{ #category : #accessing }
Decorator >> em: anObject [

	em := anObject
]
