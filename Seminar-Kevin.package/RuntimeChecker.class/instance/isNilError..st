validation
isNilError: aContext
	| doesNotUnderstandContext errorContext |
	
	doesNotUnderstandContext := aContext.
	(doesNotUnderstandContext method = (Object>>#doesNotUnderstand:)
		and: [ aContext receiver = nil ])
		ifTrue: [ 
			errorContext := self context: aContext descendBy: 1.
			^ ReNilError new
				title: 'The message ''',doesNotUnderstandContext arguments first asString,''' cannot be sent to nil';
				errorContext: errorContext;
				initializeSourceAnchor: (ReSourceAnchor new initializeEnitity: errorContext method) yourself ]
		ifFalse: [ ^ nil ]