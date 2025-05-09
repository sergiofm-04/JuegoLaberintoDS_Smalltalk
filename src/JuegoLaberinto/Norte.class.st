"
Clase de la Orientación Norte.
"
Class {
	#name : #Norte,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia',
		'UnicaIntancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Norte class >> default [
	UnicaIntancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : #'instance creation' }
Norte class >> new [
	self error:'No se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Norte >> calcularPosicionDesde:unaForma [
	| unPunto |
	unPunto := (unaForma punto x) @ (unaForma punto y-1).
	unaForma norte calcularPosicionDesde: unaForma en: unPunto
]

{ #category : #'as yet unclassified' }
Norte >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos irAlNorte:unBicho.
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
