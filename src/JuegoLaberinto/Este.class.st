"
Clase de la Orientación Este.
"
Class {
	#name : #Este,
	#superclass : #Orientacion,
	#classVars : [
		'UnicaInstancia',
		'UnicaIntancia'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'instance creation' }
Este class >> default [
	UnicaIntancia ifNil:[UnicaInstancia:=super new].
	^UnicaInstancia
]

{ #category : #'instance creation' }
Este class >> new [
	self error:'No se puede crear objeto'
]

{ #category : #'as yet unclassified' }
Este >> caminar:unBicho [
	| pos |
	pos := unBicho posicion.
	pos este entrar:unBicho.
]

{ #category : #'gestion-orientaciones' }
Este >> obtenerElementoOrEn:unContenedor [
	^unContenedor este
]

{ #category : #'gestion-orientaciones' }
Este >> ponerElemento:unEM en:unContenedor [
	unContenedor este:unEM
]

{ #category : #recorrido }
Este >> recorrer:unBloque contenedor:unContenedor [
	unContenedor este recorrer:unBloque
]
