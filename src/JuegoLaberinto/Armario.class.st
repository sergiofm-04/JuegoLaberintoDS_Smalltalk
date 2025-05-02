"
Es un contenedor que...
"
Class {
	#name : #Armario,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #consulta }
Armario >> esArmario [
	^true
]

{ #category : #'as yet unclassified' }
Armario >> visitarContenedor:unVisitor [
	unVisitor visitarArmario:self.
]
