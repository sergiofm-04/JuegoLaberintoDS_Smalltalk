Class {
	#name : #Este,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Este >> obtenerElementoOrEn:unContenedor [
	^unContenedor este
]

{ #category : #'as yet unclassified' }
Este >> ponerElemento:unEM en:unContenedor [
	unContenedor este:unEM
]
