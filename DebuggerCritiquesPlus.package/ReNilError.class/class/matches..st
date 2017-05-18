testing
matches: aContext
	^ aContext method = (Object>>#doesNotUnderstand:) and: [ aContext receiver = nil ]