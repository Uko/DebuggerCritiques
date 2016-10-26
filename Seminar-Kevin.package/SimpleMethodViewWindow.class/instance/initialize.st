initialization
initialize
	super initialize.
	self initializeNewEditor.
	self addMorph: self editor fullFrame: LayoutFrame identity.
	^ self