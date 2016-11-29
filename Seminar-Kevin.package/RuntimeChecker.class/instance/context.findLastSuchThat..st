helper
context: aContext findLastSuchThat: aBlock
	| tempContext |
	tempContext := aContext.
	(tempContext sender) ifNil: [^nil].
	[tempContext sender findContextSuchThat: aBlock] whileNotNil: [ tempContext := (tempContext sender findContextSuchThat: aBlock) ].
	^ tempContext