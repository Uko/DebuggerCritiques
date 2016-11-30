*Seminar-Kevin
gtConstructDebuggerInspectorWithIssuesIn: composite for: aDebugger
	" Like #gtConstructDebuggerInspectorIn:for:, but add an additional top-level tab that
	  shows all issues in the current stack. This includes externalProperties for Contexts
	  (i.e., runtime critiques), but also externalProperties for methods (i.e., static critiques). "
	^ composite custom: ((GTDebuggerInspector new  
		debugger: aDebugger;
		notifyPaneRemoved: true;
		showFirst: [ :a |
			a list title: 'Issues';
				display: [
					| cs |
					cs := aDebugger interruptedContext allContexts.
					(cs flatCollect: [ :each | each externalProperties ]),
					(cs flatCollect: [ :each | each method externalProperties ])
				];
				format: #title.
			a custom: (aDebugger class variablesBrowserClass new 
				debugger: aDebugger;
				title: 'Variables';
				startOn: self)];
		yourself) 
			startOn: self)