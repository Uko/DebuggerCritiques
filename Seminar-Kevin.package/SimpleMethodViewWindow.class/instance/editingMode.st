accessing
editingMode
	^ editingMode ifNil: [ editingMode := RubPlainTextMode new ]