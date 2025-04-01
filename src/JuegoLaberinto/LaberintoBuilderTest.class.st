Class {
	#name : #LaberintoBuilderTest,
	#superclass : #TestCase,
	#instVars : [
		'juego',
		'director',
		'dict'
	],
	#category : #'JuegoLaberinto-Pruebas'
}

{ #category : #tests }
LaberintoBuilderTest >> comprobarArmario:num en:unCont [
	| arm |
	
	arm:=unCont hijos detect:[:each | each esArmario ] ifNone:[nil].
	
	self assert:arm esArmario.
	
	^arm
]

{ #category : #tests }
LaberintoBuilderTest >> comprobarBombaEn:unContenedor [
	self assert:((unContenedor hijos detect:[:each | each esBomba ] ifNone:[nil]) esBomba).
]

{ #category : #tests }
LaberintoBuilderTest >> comprobarHabitacion:num [
	| hab |
	hab:=self juego obtenerHabitacion:num.
	self assert:hab num equals:num.
	^hab
]

{ #category : #tests }
LaberintoBuilderTest >> comprobarLaberintoRecursivo:unDic en:padre [
	| con nada lista|
		
	nada:=true.
	
	"contenedores"
	(unDic at:'tipo')='habitacion' ifTrue:[nada:=false.con:=self comprobarHabitacion:(unDic at:'num')].
	(unDic at:'tipo')='armario' ifTrue:[nada:=false.con:=self comprobarArmario:(unDic at:'num') en:padre].
	
	"hojas"
	(unDic at:'tipo')='bomba' ifTrue:[nada:=false.self comprobarBombaEn:padre].
	(unDic at:'tipo')='tunel' ifTrue:[nada:=false.self comprobarTunelEn:padre].

	lista:=(unDic at:'hijos' ifAbsent:[nil]). 
	lista ifNotNil:[lista do:[:each | self comprobarLaberintoRecursivo:each en:con]].

	nada ifTrue:[self assert:false]

]

{ #category : #tests }
LaberintoBuilderTest >> comprobarPuertaDe:unNum orientacion:unaOr a:otroNum orientacion:otraOr [
	| unaHab otraHab pt1 pt2 or1 or2|
	
	unaHab:=self juego obtenerHabitacion: unNum.
	otraHab:=self juego obtenerHabitacion: otroNum.
	
	self assert:unaHab num equals:unNum.
	self assert:otraHab num equals:otroNum.
	
	or1:=self director builder perform:('fabricar',unaOr) asSymbol. 
	or2:=self director builder perform:('fabricar',otraOr) asSymbol.
	
	pt1:=unaHab obtenerElementoOr:or1.
	pt2:=otraHab obtenerElementoOr:or2.
		
	self assert:(pt1 esPuerta).
	self assert:(pt2 esPuerta).
	self assert:pt1 equals:pt2.
	
	self assert:(pt1 estaAbierta not).

]

{ #category : #tests }
LaberintoBuilderTest >> comprobarTunelEn:unContenedor [
	self assert:((unContenedor hijos detect:[:each | each esTunel ] ifNone:[nil]) esTunel).
]

{ #category : #accessing }
LaberintoBuilderTest >> dict [

	^ dict
]

{ #category : #accessing }
LaberintoBuilderTest >> dict: anObject [

	dict := anObject
]

{ #category : #accessing }
LaberintoBuilderTest >> director [

	^ director
]

{ #category : #accessing }
LaberintoBuilderTest >> director: anObject [

	director := anObject
]

{ #category : #accessing }
LaberintoBuilderTest >> juego [

	^ juego
]

{ #category : #accessing }
LaberintoBuilderTest >> juego: anObject [

	juego := anObject
]

{ #category : #running }
LaberintoBuilderTest >> setUp [
	| ruta |
	super setUp.
	
	self director:Director new.
	ruta:='C:\Users\sergi\Desktop\Proyectos DS\Laberintos\'.
	self director procesar: ruta,'lab2Hab.json'.
	
	self dict:self director dict.
	
	self juego:director obtenerJuego.
	self juego agregarPersonaje:'CR7'.
]

{ #category : #tests }
LaberintoBuilderTest >> testBicho [
	| hab bicho |
	
	bicho:=self juego bichos at:1.
	self assert:bicho notNil.
	hab:=self juego obtenerHabitacion:1.
	"self juego obtenerPosicionPersonaje"
	self assert:bicho posicion equals:hab.
	self assert:bicho vidas equals:5.
]

{ #category : #tests }
LaberintoBuilderTest >> testBichoAtaca [
	| hab1 bicho person |
	hab1:=juego obtenerHabitacion:1.
	bicho:=juego bichos at:1.
	person:=juego person.
	
	self assert:bicho notNil.
	self assert:person notNil.
	
	hab1 entrar:bicho.
	hab1 entrar:person.
	bicho atacar.
	
	self assert:person vidas equals:0.
]

{ #category : #tests }
LaberintoBuilderTest >> testIniciales [
	self assert:self juego notNil.
	self assert:self juego laberinto notNil.
]

{ #category : #tests }
LaberintoBuilderTest >> testLaberinto [
	(self dict at:'laberinto') do:[:each | self comprobarLaberintoRecursivo:each en:'root' ].
	
	(self dict at:'puertas' ifAbsent:[^nil]) do:[:cada | 
	self comprobarPuertaDe:(cada at:1) orientacion:(cada at:2) a:(cada at:3) orientacion:(cada at:4)].
]

{ #category : #tests }
LaberintoBuilderTest >> testPersonaje [
	| hab |
	
	self assert:self juego person notNil.
	hab:=self juego obtenerHabitacion:1.
	"self juego obtenerPosicionPersonaje"
	self assert:self juego person posicion equals:hab.
]

{ #category : #tests }
LaberintoBuilderTest >> testPersonajeAtaca [
	| hab1 bicho person |
	hab1:=juego obtenerHabitacion:1.
	bicho:=juego bichos at:1.
	person:=juego person.
	
	self assert:bicho notNil.
	self assert:person notNil.
	
	hab1 entrar:bicho.
	hab1 entrar:person.
	person atacar.
	
	self assert:bicho vidas equals:4.
]
