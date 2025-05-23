"
Clase Puerta.
"
Class {
	#name : #Puerta,
	#superclass : #ElementoMapa,
	#instVars : [
		'lado1',
		'lado2',
		'estado',
		'visitada'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Puerta >> abrir [
	"Transcript show:'La puerta está abierta';cr.
	self abierta: true."
	self estado abrir:self.
]

{ #category : #'as yet unclassified' }
Puerta >> calcularPosicionDesde: unaForma en: unPunto [
	self visitada ifTrue:[^self].
	self visitada:true.
	unaForma num = self lado1 num "revisar"
				ifTrue: 
					[
					self lado2 punto: unPunto.
					self lado2 calcularPosicion]
				ifFalse: 
					[
					self lado1 punto: unPunto.
					self lado1 calcularPosicion]
]

{ #category : #'as yet unclassified' }
Puerta >> cerrar [
	"Transcript show:'La puerta está cerrada';cr.
	self abierta: false."
	self estado cerrar:self.
]

{ #category : #caminar }
Puerta >> entrar:alguien [
	self estado entrar:alguien puerta:self.
	"self abierta
	ifTrue:[ 
		alguien posicion = self lado1 ifTrue:[
			self lado2 entrar:alguien
			] ifFalse: [ 
			self lado1 entrar:alguien
			]
		]
	ifFalse:[ Transcript show:'La puerta está cerrada';cr. ]."
]

{ #category : #consulta }
Puerta >> esPuerta [
	^true
]

{ #category : #consulta }
Puerta >> estaAbierta [
	^self estado estaAbierta
]

{ #category : #accessing }
Puerta >> estado [

	^ estado
]

{ #category : #accessing }
Puerta >> estado: anObject [

	estado := anObject
]

{ #category : #initialization }
Puerta >> initialize [
	super initialize.
	estado:=Cerrada new.
	visitada:=false.
]

{ #category : #accessing }
Puerta >> lado1 [

	^ lado1
]

{ #category : #accessing }
Puerta >> lado1: anObject [

	lado1 := anObject
]

{ #category : #accessing }
Puerta >> lado2 [

	^ lado2
]

{ #category : #accessing }
Puerta >> lado2: anObject [

	lado2 := anObject
]

{ #category : #printing }
Puerta >> printOn:aStream [

	aStream nextPutAll:'Puerta' ; nextPutAll:self lado1 num asString ; nextPutAll:'-' ; nextPutAll:self lado2 num asString ; nextPutAll:self estado asString
]

{ #category : #caminar }
Puerta >> puedeEntrar:alguien [
	alguien posicion = self lado1 ifTrue:[
		self lado2 entrar:alguien
		] ifFalse: [ 
		self lado1 entrar:alguien
		]
]

{ #category : #accessing }
Puerta >> visitada [

	^ visitada
]

{ #category : #accessing }
Puerta >> visitada: anObject [

	visitada := anObject
]
