validation
isAdditionError: aContext
	| adaptToIntegerAndSendContext additionContext |
	adaptToIntegerAndSendContext := self
		context: aContext
		findLastSuchThat: [ :c | c method = (Object >> #adaptToInteger:andSend:) ].
	additionContext := self context: adaptToIntegerAndSendContext descendBy: 1.
	additionContext method = (Integer >> #+)
		ifTrue: [ ^ ReAdditionError new
				title: adaptToIntegerAndSendContext receiver asString , ' cannot be added to ' , additionContext receiver asString;
				errorContext: (self context: additionContext descendBy: 2) yourself ]
		ifFalse: [ ^ nil ]