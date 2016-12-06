validation
isAdditionError: aContext
	| adaptToIntegerAndSendContext additionContext errorContext |
	adaptToIntegerAndSendContext := self
		context: aContext
		findLastSuchThat: [ :c | c method = (Object >> #adaptToInteger:andSend:) ].
	(adaptToIntegerAndSendContext) ifNil: [ ^nil ].
	additionContext := self context: adaptToIntegerAndSendContext descendBy: 1.
	(additionContext) ifNil: [ ^nil ].
	additionContext method = (Integer >> #+)
		ifTrue: [ 
			errorContext := self context: additionContext descendBy: 2.
			^ ReAdditionError new
				title: adaptToIntegerAndSendContext receiver asString , ' cannot be added to ' , additionContext receiver asString;
				errorContext: errorContext;
				initializeSourceAnchor: (ReSourceAnchor new initializeEnitity: errorContext method) yourself ]
		ifFalse: [ ^ nil ]