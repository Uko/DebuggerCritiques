as yet unclassified
context: aContext findLastSuchThat: aBlock
	| tempContext |
	tempContext := aContext.
	[tempContext sender findContextSuchThat: aBlock] whileNotNil: [ tempContext := (tempContext sender findContextSuchThat: aBlock) ].
	^ tempContext