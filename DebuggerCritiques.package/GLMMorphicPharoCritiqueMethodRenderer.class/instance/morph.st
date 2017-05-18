rendering
morph
	|morph|
	 morph := RubPluggableTextMorph new
		beForSmalltalkCode;
		getSelectionSelector: #primarySelectionInterval;
		model: textModel;
		color: Smalltalk ui theme backgroundColor;
		textFont: StandardFonts codeFont;
		yourself.
	^ morph