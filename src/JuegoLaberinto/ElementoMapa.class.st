"
Es la interfaz común de los elementos del mapa.
"
Class {
	#name : #ElementoMapa,
	#superclass : #Object,
	#instVars : [
		'padre'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #caminar }
ElementoMapa >> entrar [
	"deberemos indicar quién entra (en un futuro)"
	self subclassResponsibility 
]

{ #category : #caminar }
ElementoMapa >> entrar:alguien [
	"deberemos indicar quién entra (en un futuro)"
	self subclassResponsibility 
]

{ #category : #consulta }
ElementoMapa >> esHabitacion [
	^false
]

{ #category : #consulta }
ElementoMapa >> esPared [
	^false
]

{ #category : #consulta }
ElementoMapa >> esPuerta [
	^false
]

{ #category : #accessing }
ElementoMapa >> padre [

	^ padre
]

{ #category : #accessing }
ElementoMapa >> padre: anObject [

	padre := anObject
]
