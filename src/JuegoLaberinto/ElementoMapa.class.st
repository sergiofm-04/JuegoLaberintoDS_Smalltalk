"
Es la interfaz común de los elementos del mapa.
"
Class {
	#name : #ElementoMapa,
	#superclass : #Object,
	#instVars : [
		'padre',
		'comandos'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #visitor }
ElementoMapa >> aceptar:unVisitor [
	self subclassResponsibility
]

{ #category : #comandos }
ElementoMapa >> agregarComando:unComando [
	self comandos add:unComando.
]

{ #category : #comandos }
ElementoMapa >> calcularPosicionDesde: unaForma en: unPunto [
	"no hacemos nada por defecto"
]

{ #category : #accessing }
ElementoMapa >> comandos [

	^ comandos
]

{ #category : #accessing }
ElementoMapa >> comandos: anObject [

	comandos := anObject
]

{ #category : #comandos }
ElementoMapa >> eliminarComando:unComando [
	self comandos remove:unComando ifAbsent:["no existe ese objeto"]
]

{ #category : #caminar }
ElementoMapa >> entrar:alguien [
	self subclassResponsibility
]

{ #category : #consulta }
ElementoMapa >> esArmario [
	^false
]

{ #category : #consulta }
ElementoMapa >> esBomba [
	^false
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

{ #category : #consulta }
ElementoMapa >> esTunel [
	^false
]

{ #category : #initialization }
ElementoMapa >> initialize [
	comandos:=OrderedCollection new.
]

{ #category : #'as yet unclassified' }
ElementoMapa >> obtenerComandos [
	^self comandos
]

{ #category : #accessing }
ElementoMapa >> padre [

	^ padre
]

{ #category : #accessing }
ElementoMapa >> padre: anObject [

	padre := anObject
]

{ #category : #recorrido }
ElementoMapa >> recorrer:unBloque [
	unBloque value:self
]
