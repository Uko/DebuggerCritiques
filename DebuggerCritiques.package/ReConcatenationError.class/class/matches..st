testing
matches: aContext
	| notIndexableContext concatenationContext |
	notIndexableContext := self context: aContext descendBy: 1.
	concatenationContext := self context: aContext descendBy: 4.
	^ (notIndexableContext method = (Object >> #errorNotIndexable)
		and: [ concatenationContext method = (SequenceableCollection >> #,) ])