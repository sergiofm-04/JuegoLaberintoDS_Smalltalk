"
Clase de la Orientación Oeste.
"
Class {
	#name : #Oeste,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia',
		'UnicaIntancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #accessing }
Oeste class >> default [
	UnicaIntancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : #'instance creation' }
Oeste class >> new [
	self error:'No se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Oeste >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos oeste entrar:unBicho.
]

{ #category : #'gestion-orientaciones' }
Oeste >> obtenerElementoOrEn:unContenedor [
	^unContenedor oeste
]

{ #category : #'gestion-orientaciones' }
Oeste >> ponerElemento:unEM en:unContenedor [
	unContenedor oeste:unEM
]

{ #category : #recorrido }
Oeste >> recorrer:unBloque contenedor:unContenedor [
	unContenedor oeste recorrer:unBloque
]
