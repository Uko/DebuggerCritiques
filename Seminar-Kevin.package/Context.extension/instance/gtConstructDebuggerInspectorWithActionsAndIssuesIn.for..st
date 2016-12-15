*Seminar-Kevin
gtConstructDebuggerInspectorWithActionsAndIssuesIn: composite for: aDebugger
	^ composite custom: ((GTDebuggerActionsInspector new  
		debugger: aDebugger;
		notifyPaneRemoved: true;
		showFirst: [ :a |
			a table title: 'Issues';
			display: [
					| cs |
					cs := aDebugger interruptedContext allContexts.
					(cs flatCollect: [ :each | each externalProperties ]),
					(cs flatCollect: [ :each | each method externalProperties ])
				];
			column: '' evaluated: #icon width: 16;
			column: 'Type' evaluated: [:each :entity | 
				(each class inheritsFrom: ReRuntimeError) ifTrue: ['dynamic'] ifFalse: [
					(each class inheritsFrom: ReAbstractCritique) ifTrue: ['static'] ifFalse: ['other']
				]
			] width: 55;
			column: 'Class' evaluated: [ :each | each sourceAnchor sourceEntity name ];
			column: 'Title' evaluated: #title.
			a custom: (aDebugger class variablesBrowserClass new 
				debugger: aDebugger;
				title: 'Variables';
				startOn: self)];
		yourself) 
			startOn: self)