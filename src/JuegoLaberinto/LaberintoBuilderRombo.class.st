"
Builder para los laberintos con forma de rombo.
"
Class {
	#name : #LaberintoBuilderRombo,
	#superclass : #LaberintoBuilder,
	#category : #'JuegoLaberinto-Builder'
}

{ #category : #'metodos fabricacion' }
LaberintoBuilderRombo >> fabricarForma [
	| forma |	
	forma:=Rombo new.
	forma agregarOrientacion: self fabricarNoreste; agregarOrientacion: self fabricarSureste; agregarOrientacion: self fabricarNoroeste; agregarOrientacion: self fabricarSuroeste.
	
	^forma
]

{ #category : #'metodos fabricacion' }
LaberintoBuilderRombo >> fabricarNoreste [
	^Noreste new.
]

{ #category : #'metodos fabricacion' }
LaberintoBuilderRombo >> fabricarNoroeste [
	^Noroeste new.
]

{ #category : #'metodos fabricacion' }
LaberintoBuilderRombo >> fabricarSureste [
	^Sureste new.
]

{ #category : #'metodos fabricacion' }
LaberintoBuilderRombo >> fabricarSuroeste [
	^Suroeste new.
]
