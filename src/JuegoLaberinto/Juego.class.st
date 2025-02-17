"
Juego es la clase principal del juego del laberinto.
"
Class {
	#name : #Juego,
	#superclass : #Object,
	#instVars : [
		'laberinto',
		'bichos'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #'gestion-bichos' }
Juego >> agregarBicho:unBicho [
	self bichos add:unBicho
]

{ #category : #accessing }
Juego >> bichos [

	^ bichos
]

{ #category : #accessing }
Juego >> bichos: anObject [

	bichos := anObject
]

{ #category : #laberintos }
Juego >> crearLaberinto2Habitaciones [

	| hab1 hab2 puerta |
	
	hab1:=Habitacion new num:1.
	hab1 este:Pared new.
	hab1 oeste:Pared new.
	hab1 norte:Pared new.
	
	hab2:=Habitacion new num:2.
	hab2 sur:Pared new.
	hab2 este:Pared new.
	hab2 oeste:Pared new.
	
	puerta:=Puerta new.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:Laberinto new.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFM:unFM [
"unFM debe ser una instancia de Creator"

	| hab1 hab2 puerta |
	
	hab1:=unFM fabricarHabitacion: 1.
	
	hab2:=unFM fabricarHabitacion: 2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
]

{ #category : #laberintos }
Juego >> crearLaberinto2HabitacionesFMD:unFM [
"unFM debe ser una instancia de Creator"

	| hab1 hab2 puerta bomba1 bomba2 |
	
	hab1:=unFM fabricarHabitacion: 1.
	
	hab2:=unFM fabricarHabitacion: 2.
	
	bomba1:=unFM fabricarBomba.  "unFM fabricarBomba:unFM fabricarPared"
	bomba1 em:unFM fabricarPared.
	hab1 este:bomba1.
	
	bomba2:=unFM fabricarBomba.
	bomba2 em:unFM fabricarPared.
	hab2 este:bomba2.
	
	puerta:=unFM fabricarPuerta.
	puerta lado1:hab1.
	puerta lado2:hab2.
	
	hab1 sur:puerta.
	hab2 norte:puerta.
	
	self laberinto:unFM fabricarLaberinto.
	self laberinto agregarHabitacion: hab1.
	self laberinto agregarHabitacion: hab2.
	
	^self laberinto
]

{ #category : #'gestion-bichos' }
Juego >> eliminarBicho:unBicho [
	self bichos remove:unBicho ifAbsent:[ Transcript show:'No existe ese bicho';cr. ]
]

{ #category : #initialization }
Juego >> initialize [
	bichos:=OrderedCollection new.
]

{ #category : #accessing }
Juego >> laberinto [

	^ laberinto
]

{ #category : #accessing }
Juego >> laberinto: anObject [

	laberinto := anObject
]

{ #category : #accessing }
Juego >> obtenerHabitacion:unNum [

	"delegar y devolver lo que le de laberinto"
	^self laberinto obtenerHabitacion:unNum
]
