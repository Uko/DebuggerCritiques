as yet unclassified
setMethodEditingModeFor: aMethod
	self editingMode: RubSmalltalkCodeMode new.
	self editingMode classOrMetaClass: aMethod methodClass