as yet unclassified
context: aContext descendBy: aNumber
	" Return the context that is aNumber below aContext. This method must only be called
	  if there are enough contexts. "
	| tempContext |
	tempContext := aContext.
	1 to: aNumber do: [ :i | (tempContext sender) ifNil: [^tempContext]. tempContext := tempContext sender ].
	^ tempContext