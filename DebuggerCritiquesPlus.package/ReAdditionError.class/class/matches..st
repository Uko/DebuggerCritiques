testing
matches: aContext
	| adaptToIntegerAndSendContext additionContext |
	adaptToIntegerAndSendContext := self
		context: aContext
		findLastSuchThat: [ :c | c method = (Object >> #adaptToInteger:andSend:) ].
	^ (adaptToIntegerAndSendContext) ifNil: [ false ] ifNotNil: [
		additionContext := self context: adaptToIntegerAndSendContext descendBy: 1.
		additionContext notNil and: [ additionContext method = (Integer >> #+) ]
	]