"
Clase Habitacion.
"
Class {
	#name : #Habitacion,
	#superclass : #Contenedor,
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #consulta }
Habitacion >> esHabitacion [
	^true
]

{ #category : #movimiento }
Habitacion >> irAlEste:alguien [
	self este entrar:alguien
]

{ #category : #movimiento }
Habitacion >> irAlNorte:alguien [
	self norte entrar:alguien
]

{ #category : #movimiento }
Habitacion >> irAlOeste:alguien [
	self oeste entrar:alguien
]

{ #category : #movimiento }
Habitacion >> irAlSur:alguien [
	self sur entrar:alguien
]

{ #category : #printing }
Habitacion >> printOn:aStream [

	aStream nextPutAll:'Hab' ; nextPutAll:self num asString
]
