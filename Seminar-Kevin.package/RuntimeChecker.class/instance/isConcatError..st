validation
isConcatError: aContext
	| notIndexableContext concatenationContext |
	notIndexableContext := self context: aContext descendBy: 1.
	concatenationContext := self context: aContext descendBy: 4.
	(notIndexableContext method = (Object >> #errorNotIndexable)
		and: [ concatenationContext method = (SequenceableCollection >> #,) ])
		ifTrue: [ ^ ReConcatenationError new
				title: '''' , concatenationContext receiver , ''' cannot be concatenated with ' , aContext receiver asString;
				errorContext: (self context: aContext descendBy: 5) yourself ]
		ifFalse: [ ^ nil ]