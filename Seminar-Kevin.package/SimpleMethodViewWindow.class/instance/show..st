view
show: aMethod
	(aMethod isKindOf: CompiledMethod) ifTrue: [
		self setMethodEditingModeFor: aMethod.
		self setText: aMethod sourceCode.
		aMethod annotateRubricText: self model.
	] ifFalse: [
		self model setText: aMethod printString.
		self setTextEditingMode
	].
	self isInWorld ifFalse: [ self openInWorld ]