testing
errorForContext: aContext
	| adaptToIntegerAndSendContext additionContext errorContext |
	adaptToIntegerAndSendContext := self
		context: aContext
		findLastSuchThat: [ :c | c method = (Object >> #adaptToInteger:andSend:) ].
	additionContext := self context: adaptToIntegerAndSendContext descendBy: 1.
	errorContext := self context: additionContext descendBy: 2.
	^ self new
		errorContext: errorContext;
		initializeRule: self sourceAnchor: (ReSourceAnchor new initializeEnitity: errorContext method);
		yourself