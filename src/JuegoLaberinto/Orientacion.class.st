"
Interfaz común para las orientaciones.
"
Class {
	#name : #Orientacion,
	#superclass : #Object,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-orientaciones' }
Orientacion >> ponerElemento:unEM en:unContenedor [
	self subclassResponsibility
]

{ #category : #recorrido }
Orientacion >> recorrer:unBloque contenedor:unContenedor [
	self subclassResponsibility
]
