as yet unclassified
context: aContext descendBy: aNumber
	| tempContext |
	tempContext := aContext.
	1 to: aNumber do: [ :i | tempContext := tempContext sender ].
	^ tempContext