building presentations
methodCodeWidgetIn: composite forContext: aContext
	^ composite pharoCritiqueMethod
		title: 'Source';
		format: [ aContext sourceCode ];
		smalltalkClass: [  aContext methodClass ];
		doItReceiver: [ aContext receiver ];
		doItContext: [  aContext ];
		editingMode: [ RubSmalltalkCodeMode new classOrMetaClass: aContext methodClass ];
		textModel: [ :aTextModel |
			aContext method annotateRubricText: aTextModel.
			"aContext annotateRubricText: aTextModel." "TODO Kevin: Re-enable this after testing out the changes. "
		]