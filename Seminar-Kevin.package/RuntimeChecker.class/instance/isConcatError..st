as yet unclassified
isConcatError: aContext
	| notIndexable notIndexableContext concatenation concatenationContext |
	notIndexable := Object >> #errorNotIndexable.
	concatenation := SequenceableCollection >> #,.
	notIndexableContext := aContext sender.
	concatenationContext := aContext sender sender sender sender.
	"concatenationContext := self stackAtDistance: 4."
	(notIndexableContext method = notIndexable
		and: [ concatenationContext method = concatenation ])
		ifTrue: [ ^ '''' , concatenationContext receiver , ''' cannot be concatenated with '
				, aContext receiver asString ]
		ifFalse: [ ^ nil ]