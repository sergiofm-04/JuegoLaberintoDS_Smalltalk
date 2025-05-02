"
Tunel es un Proxy virtual. Cuando el personaje entre en el túnel, se creará un nuevo laberinto.
"
Class {
	#name : #Tunel,
	#superclass : #Hoja,
	#instVars : [
		'laberinto'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #visitor }
Tunel >> aceptar:unVisitor [
	unVisitor visitarTunel:self.
]

{ #category : #caminar }
Tunel >> crearNuevoLaberinto:alguien [
	Transcript show:alguien printString ; nextPutAll: ' crea un nuevo laberinto';cr.
	self laberinto: alguien juegoClonaLaberinto. "prototipo deepCopy."
]

{ #category : #caminar }
Tunel >> entrar: alguien [

	self laberinto
		ifNil: [ alguien crearNuevoLaberinto: self ]
		ifNotNil: [
			Transcript
				show: alguien printString;
				nextPutAll: ' entra en un nuevo laberinto';
				cr.
			self laberinto entrar: alguien ]
]

{ #category : #consulta }
Tunel >> esTunel [
	^true
]

{ #category : #accessing }
Tunel >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Tunel >> laberinto: anObject [

	laberinto := anObject
]
