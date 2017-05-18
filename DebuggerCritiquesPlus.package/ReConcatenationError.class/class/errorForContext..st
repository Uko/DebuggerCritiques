testing
errorForContext: aContext
	| notIndexableContext concatenationContext errorContext node |
	notIndexableContext := self context: aContext descendBy: 1.
	concatenationContext := self context: aContext descendBy: 4.
	errorContext := self context: aContext descendBy: 5.
	node := errorContext sourceNode sourceNodeForPC: errorContext pc - 1.
	^ (self
		rule: self
		achor: (ReIntervalSourceAnchor entity: errorContext method interval: node sourceInterval)
		oldNode: node arguments first
		newNode: (RBMessageNode receiver: node arguments first copy selector: #asString))
		errorContext: errorContext;
		concatContext: concatenationContext;
		yourself