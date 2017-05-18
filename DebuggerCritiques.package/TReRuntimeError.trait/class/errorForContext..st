as yet unclassified
errorForContext: aContext
	self assert: (self matches: aContext).
	self subclassResponsibility