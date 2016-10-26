accessing
editor
	^ editor ifNil: [ editor := self initializeNewEditor ]