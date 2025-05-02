"
Contenedor es el Composite. Es un EM que tiene hijos.
"
Class {
	#name : #Contenedor,
	#superclass : #ElementoMapa,
	#instVars : [
		'hijos',
		'forma',
		'num'
	],
	#category : #'JuegoLaberinto-Laberinto'
}

{ #category : #recorrido }
Contenedor >> aceptar:unVisitor [

	self visitarContenedor:unVisitor.
	self hijos do:[:each | each recorrer:unVisitor].	
	"self obtenerOrientaciones do:[:each | each aceptar:unVisitor contenedor:self forma]."
]

{ #category : #'gestion-hijos' }
Contenedor >> agregarHijo:unEM [
	unEM padre:self.
	self hijos add:unEM.
]

{ #category : #'gestion-orientaciones' }
Contenedor >> agregarOrientacion:unaOr [
	self forma agregarOrientacion:unaOr.
]

{ #category : #'gestion-hijos' }
Contenedor >> eliminarHijo:unEM [
	self hijos remove:unEM ifAbsent:["no existe ese objeto"]
]

{ #category : #caminar }
Contenedor >> entrar:alguien [
	Transcript show: alguien printString ;  nextPutAll: ' esta en ' ; nextPutAll: self printString ;cr.
	alguien posicion:self.
	
	alguien buscarTunel.
]

{ #category : #accessing }
Contenedor >> forma [

	^ forma
]

{ #category : #accessing }
Contenedor >> forma: anObject [

	forma := anObject
]

{ #category : #accessing }
Contenedor >> hijos [

	^ hijos
]

{ #category : #accessing }
Contenedor >> hijos: anObject [

	hijos := anObject
]

{ #category : #initialization }
Contenedor >> initialize [
	super initialize.
	hijos:=OrderedCollection new.
]

{ #category : #movimiento }
Contenedor >> irAlEste:alguien [
	"self este entrar:alguien"
	self forma irAlEste:alguien
]

{ #category : #movimiento }
Contenedor >> irAlNorte:alguien [
	"self norte entrar:alguien"
	self forma irAlNorte:alguien
]

{ #category : #movimiento }
Contenedor >> irAlOeste:alguien [
	"self oeste entrar:alguien"
	self forma irAlOeste:alguien
]

{ #category : #movimiento }
Contenedor >> irAlSur:alguien [
	"self sur entrar:alguien"
	self forma irAlSur:alguien
]

{ #category : #accessing }
Contenedor >> num [

	^ num
]

{ #category : #accessing }
Contenedor >> num: anObject [

	num := anObject
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerElementoOr:unaOr [
	"^unaOr obtenerElementoOrEn:self"
	^self forma obtenerElementoOr:unaOr.
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerOrientacion [
	"obtener orientación aleatoria"
	"| ind |

	ind:=(1 to: self orientaciones size) atRandom.
	^self orientaciones at: ind."
	
	^self forma obtenerOrientacion.
]

{ #category : #'gestion-orientaciones' }
Contenedor >> obtenerOrientaciones [
	^self forma obtenerOrientaciones
]

{ #category : #accessing }
Contenedor >> ponerEnOr:unaOr elemento:unEM [
	"unaOr ponerElemento:unEM en:self."
	self forma ponerEnOr:unaOr elemento:unEM
]

{ #category : #recorrido }
Contenedor >> recorrer:unBloque [

	unBloque value:self.
	self hijos do:[:each | each recorrer:unBloque].	
	self obtenerOrientaciones do:[:each | each recorrer:unBloque contenedor:self forma].
]

{ #category : #recorrido }
Contenedor >> visitarContenedor:unVisitor [
	self subclassResponsibility.
]
