testing
errorForContext: aContext
	| errorContext node |
	self assert: (self matches: aContext).
	errorContext := self context: aContext descendBy: 1.
	node := errorContext sourceNode sourceNodeForPC: errorContext pc - 1.
	^ self new
		errorContext: errorContext;
		initializeRule: self sourceAnchor: (ReIntervalSourceAnchor new initializeEnitity: errorContext method interval: node sourceInterval) yourself