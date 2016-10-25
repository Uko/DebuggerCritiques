as yet unclassified
newScrolledTextMorph
	| st |
	st := RubPluggableTextMorph new
		on: self
			text: #getText
			accept: nil
			readSelection: nil
			menu: nil
			setSelection: nil;
		autoAccept: false;
		beForSmalltalkCode;
		withCodeSizeFeedback.
	^ st