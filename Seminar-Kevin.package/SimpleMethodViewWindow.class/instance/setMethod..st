view
setMethod: aMethod
	self setMethodEditingModeFor: aMethod.
	self setText: aMethod sourceCode.
	aMethod annotateRubricText: self model