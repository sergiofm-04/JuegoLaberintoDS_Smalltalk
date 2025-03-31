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

{ #category : #caminar }
Tunel >> entrar:alguien [
	self laberinto: alguien juego prototipo deepCopy.
	self laberinto entrar:alguien.
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
