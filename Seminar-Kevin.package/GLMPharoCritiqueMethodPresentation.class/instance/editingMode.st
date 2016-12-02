accessing
editingMode
	^ editingModeBlock
		ifNotNil: [ :aBlock | aBlock glamourValue: self entity ]
		ifNil: [ RubPlainTextMode new ]