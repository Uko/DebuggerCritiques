validation
isConcatError: aContext
	| notIndexableContext concatenationContext errorContext|
	notIndexableContext := self context: aContext descendBy: 1.
	concatenationContext := self context: aContext descendBy: 4.
	^ (notIndexableContext method = (Object >> #errorNotIndexable)
		and: [ concatenationContext method = (SequenceableCollection >> #,) ])
		ifTrue: [
			| node |
			errorContext := self context: aContext descendBy: 5.
			node := errorContext sourceNode sourceNodeForPC: errorContext pc - 1.
			(ReConcatenationError
				rule: nil
				achor: (ReIntervalSourceAnchor
					entity: errorContext method
					interval: node sourceInterval)
				oldNode: node arguments first
				newNode: (RBMessageNode receiver: node arguments first copy selector: #asString))
				title: '''' , concatenationContext receiver , ''' cannot be concatenated with ' , aContext receiver asString;
				errorContext: errorContext;
				yourself ]
		ifFalse: [ nil ]