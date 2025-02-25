Class {
	#name : #Norte,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Norte >> obtenerElementoOrEn:unContenedor [
	^unContenedor norte
]

{ #category : #'as yet unclassified' }
Norte >> ponerElemento:unEM en:unContenedor [
	unContenedor norte:unEM
]
