"
Clase de la Orientación Sur.
"
Class {
	#name : #Sur,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'as yet unclassified' }
Sur >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos sur entrar:unBicho.
]

{ #category : #'gestion-orientaciones' }
Sur >> obtenerElementoOrEn:unContenedor [
	^unContenedor sur
]

{ #category : #'gestion-orientaciones' }
Sur >> ponerElemento:unEM en:unContenedor [
	unContenedor sur:unEM
]

{ #category : #recorrido }
Sur >> recorrer:unBloque contenedor:unContenedor [
	unContenedor sur recorrer:unBloque
]
