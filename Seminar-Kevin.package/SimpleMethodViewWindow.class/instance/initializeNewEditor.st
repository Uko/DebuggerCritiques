accessing
initializeNewEditor
	editor := RubPluggableTextMorph new.
	editor
		model: self model;
		beForSmalltalkCode;
		editingMode: self editingMode.
	^ editor