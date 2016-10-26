accessing
model
	^ model ifNil: [ model := RubScrolledTextModel new ]