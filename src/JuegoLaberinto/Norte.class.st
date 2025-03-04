"
Clase de la Orientación Norte.
"
Class {
	#name : #Norte,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Norte >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos norte entrar:unBicho.
]

{ #category : #'gestion-orientaciones' }
Norte >> obtenerElementoOrEn:unContenedor [
	^unContenedor norte
]

{ #category : #'gestion-orientaciones' }
Norte >> ponerElemento:unEM en:unContenedor [
	unContenedor norte:unEM
]

{ #category : #recorrido }
Norte >> recorrer:unBloque contenedor:unContenedor [
	unContenedor norte recorrer:unBloque
]
