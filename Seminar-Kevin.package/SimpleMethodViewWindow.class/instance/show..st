view
show: aMethod
	(aMethod isKindOf: CompiledMethod) ifTrue: [
		self setMethod: aMethod
	] ifFalse: [
		self model setText: aMethod printString.
		self setTextEditingMode
	].
	self isInWorld ifFalse: [ self openInWorld ]