helper
context: aContext descendBy: aNumber
	| tempContext |
	tempContext := aContext.
	1 to: aNumber do: [ :i | (tempContext sender) ifNil: [^tempContext]. tempContext := tempContext sender ].
	^ tempContext