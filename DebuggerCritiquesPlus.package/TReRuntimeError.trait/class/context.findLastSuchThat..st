as yet unclassified
context: aContext findLastSuchThat: aBlock
	" Starting from aContext, find the last one that satisfies aBlock. Return nil if no such
	  context can be reached. "
	| tempContext |
	tempContext := aContext.
	^ tempContext ifNil: [ nil ] ifNotNil: [
		tempContext sender ifNil: [ nil ] ifNotNil: [
			[ tempContext sender findContextSuchThat: aBlock ]
			whileNotNil: [ tempContext := tempContext sender findContextSuchThat: aBlock ].
	tempContext ] ]