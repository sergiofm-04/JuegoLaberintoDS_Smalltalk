"
Agresivo: es un bicho que se mueve rápido y tiene más poder.
"
Class {
	#name : #Agresivo,
	#superclass : #Modo,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Agresivo >> buscarTunelBicho: unBicho [
	| unCont tunel |
	
	unCont := unBicho posicion.
	tunel := unCont hijos
		         detect: [ :each | each esTunel ]
		         ifNone: [ nil ].
	tunel ifNotNil: [ tunel entrar: unBicho ]
]

{ #category : #'as yet unclassified' }
Agresivo >> dormir:unBicho [
	Transcript show:unBicho printString ; nextPutAll: ' duerme';cr.
   (Delay forSeconds: 1) wait.
]

{ #category : #consulta }
Agresivo >> esAgresivo [
	^true
]

{ #category : #printing }
Agresivo >> printOn:aStream [

	aStream nextPutAll:'Agresivo'
]
