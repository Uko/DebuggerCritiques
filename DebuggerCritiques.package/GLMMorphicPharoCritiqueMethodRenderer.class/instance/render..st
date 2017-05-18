rendering
render: aPresentation
	super render: aPresentation.

	self flag: 'Hack! Add segments to presentation and remove line below'.
	textMorph withTextSegmentIcons.
	
	textMorph editingMode: aPresentation editingMode.
	aPresentation textModel glamourValue: textModel.

	^ textMorph