Class {
	#name : #LOCell,
	#superclass : #SimpleSwitchMorph,
	#instVars : [
		'mouseAction'
	],
	#category : #'PBE-LightsOut'
}

{ #category : #initialization }
LOCell >> initialize [

	super initialize.
	self label: ''.
	self borderWidth: 2.
	bounds := 0 @ 0 corner: 16 @ 16.
	offColor := Color paleYellow.
	onColor := Color paleBlue darker.
	self useSquareCorners.
	self turnOff
]

{ #category : #accessors }
LOCell >> mouseAction: aBlock [

	mouseAction := aBlock
]

{ #category : #accessors }
LOCell >> mouseMove: anEvent [
	"do nothing to prevent mouse moves between click and release from toggling other cells"
	
]

{ #category : #accessors }
LOCell >> mouseUp: anEvent [

	self toggleState.
	mouseAction value
]
