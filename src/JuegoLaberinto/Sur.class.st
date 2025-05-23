"
Clase de la Orientación Sur.
"
Class {
	#name : #Sur,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia',
		'UnicaIntancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Sur class >> default [
	UnicaIntancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : #'instance creation' }
Sur class >> new [
	self error:'No se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Sur >> calcularPosicionDesde:unaForma [
	| unPunto |
	unPunto := (unaForma punto x) @ (unaForma punto y+1).
	unaForma sur calcularPosicionDesde: unaForma en: unPunto
]

{ #category : #'as yet unclassified' }
Sur >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos irAlSur:unBicho.
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
