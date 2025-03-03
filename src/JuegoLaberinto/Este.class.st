"
Clase de la Orientación Este.
"
Class {
	#name : #Este,
	#superclass : #Orientacion,
	#category : #'JuegoLaberinto-Laberinto'
}

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
