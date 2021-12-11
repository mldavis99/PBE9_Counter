"
`Counter` is a simple concrete class which supports incrementing and
decrementing.
Its API is
- `decrement` and `increment`
- `count`
Its creation message is `startAt:`
""From Chapter 5 of PBE9""
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger.
]

{ #category : #accessing }
Counter >> count [ 
	^ count 
]

{ #category : #accessing }
Counter >> count: aValue [
	count := aValue
]

{ #category : #accessing }
Counter >> decrement [ 
	count := count - 1
]

{ #category : #accessing }
Counter >> increment [ 
	count := count + 1
]

{ #category : #accessing }
Counter >> initialize [
	"set the initial value of the value to 0"
	count := 0
]

{ #category : #accessing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value' , count printString .
]
