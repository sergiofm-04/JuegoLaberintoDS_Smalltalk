"
Interfaz común de los entes del juego.
"
Class {
	#name : #Ente,
	#superclass : #Object,
	#instVars : [
		'poder',
		'posicion',
		'vidas',
		'juego',
		'estadoEnte'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #ataques }
Ente >> atacar [
	self estadoEnte atacar:self.
]

{ #category : #'as yet unclassified' }
Ente >> avisar [
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
Ente >> buscarTunel [
	" nada "
]

{ #category : #caminar }
Ente >> crearNuevoLaberinto:unTunel [
	" nada "
]

{ #category : #ataques }
Ente >> esAtacadoPor:alguien [
	Transcript show:self printString ; nextPutAll: ' es atacado por ' ; nextPutAll: alguien printString;cr.
	
	self vidas:(self vidas-alguien poder).
	Transcript show:'Vidas: ' ; nextPutAll: self vidas asString ; cr.
	
	self vidas <= 0 ifTrue:[ self heMuerto ]
]

{ #category : #consulta }
Ente >> estaVivo [
	^self vidas > 0
]

{ #category : #accessing }
Ente >> estadoEnte [

	^ estadoEnte
]

{ #category : #accessing }
Ente >> estadoEnte: anObject [

	estadoEnte := anObject
]

{ #category : #'as yet unclassified' }
Ente >> heMuerto [
	self estadoEnte:Muerto new.
	self avisar.
]

{ #category : #initialization }
Ente >> initialize [
	vidas:=5.
	poder:=1.
	estadoEnte:=Vivo new.
]

{ #category : #accessing }
Ente >> juego [

	^ juego
]

{ #category : #accessing }
Ente >> juego: anObject [

	juego := anObject
]

{ #category : #'as yet unclassified' }
Ente >> juegoClonaLaberinto [
	^self juego clonarLaberinto.
]

{ #category : #accessing }
Ente >> poder [

	^ poder
]

{ #category : #accessing }
Ente >> poder: anObject [

	poder := anObject
]

{ #category : #accessing }
Ente >> posicion [

	^ posicion
]

{ #category : #accessing }
Ente >> posicion: anObject [

	posicion := anObject.
	self changed:#posicion.
]

{ #category : #ataques }
Ente >> puedeAtacar [
	self subclassResponsibility
]

{ #category : #accessing }
Ente >> vidas [

	^ vidas
]

{ #category : #accessing }
Ente >> vidas: anObject [

	vidas := anObject
]
