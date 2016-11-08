as yet unclassified
check: context
	(self isConcatError: context)
		ifNotNil: [ :msg | ^ {(ReConcatenationError new title: msg)} ]
		ifNil: [ ^ {} ]