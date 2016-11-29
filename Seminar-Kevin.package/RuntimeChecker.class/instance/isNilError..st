validation
isNilError: aContext
	| doesNotUnderstandContext |
	
	doesNotUnderstandContext := aContext.
	(doesNotUnderstandContext method = (Object>>#doesNotUnderstand:)
		and: [ aContext receiver = nil ])
		ifTrue: [ ^ ReNilError new
				title: 'The message ''',doesNotUnderstandContext arguments first asString,''' cannot be sent to nil';
				errorContext: (self context: aContext descendBy: 1) yourself ]
		ifFalse: [ ^ nil ]