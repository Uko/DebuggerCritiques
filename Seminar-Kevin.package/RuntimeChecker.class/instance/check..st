as yet unclassified
check: context
	(self isConcatError: context)
		ifNotNil: [ :msg | ^ {(
			" TODO: this is not working as it should, fix it :-) "
			ReConcatenationError new
				title: msg;
				errorContext: thisContext sender sender;
				yourself
				)} ]
		ifNil: [ ^ {} ]