*DebuggerCritiques
gtConstructDebuggerInspectorWithActionsAndIssuesIn: composite for: aDebugger
	^ composite custom: ((GTDebuggerActionsInspector new  
		debugger: aDebugger;
		notifyPaneRemoved: true;
		showFirst: [ :a |
			| static dynamic |
			static := aDebugger interruptedContext allContexts flatCollect: [ :each | each method externalProperties ].
			dynamic := aDebugger interruptedContext allContexts flatCollect: [ :each | each externalProperties ].
			
			dynamic ifNotEmpty: [
				a table title: 'Exception critiques';
				display: [ dynamic ];
				column: '' evaluated: #icon width: 16;
				column: 'Class' evaluated: [ :each | each sourceAnchor sourceEntity name ];
				column: 'Title' evaluated: #title.
			].
			static ifNotEmpty: [
				a table title: 'Stack critiques';
				display: [ static ];
				column: '' evaluated: #icon width: 16;
				column: 'Class' evaluated: [ :each | each sourceAnchor sourceEntity name ];
				column: 'Title' evaluated: #title.
			].
			a custom: (aDebugger class variablesBrowserClass new 
				debugger: aDebugger;
				title: 'Variables';
				startOn: self)];
		yourself) 
			startOn: self)