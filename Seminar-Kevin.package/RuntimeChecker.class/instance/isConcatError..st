validation
isConcatError: aContext
	| notIndexableContext concatenationContext errorContext|
	notIndexableContext := self context: aContext descendBy: 1.
	concatenationContext := self context: aContext descendBy: 4.
	(notIndexableContext method = (Object >> #errorNotIndexable)
		and: [ concatenationContext method = (SequenceableCollection >> #,) ])
		ifTrue: [ 
			errorContext := self context: aContext descendBy: 5.
			^ ReConcatenationError new
				title: '''' , concatenationContext receiver , ''' cannot be concatenated with ' , aContext receiver asString;
				errorContext: errorContext;
				initializeSourceAnchor: (ReSourceAnchor new initializeEnitity: errorContext method) yourself ]
		ifFalse: [ ^ nil ]