accessing
setAsDefault
	GTGenericCritiqueStackDebugger register.
	Smalltalk tools debuggerTool: GTGenericCritiqueStackDebugger.
	" Remove deprecation warning windows since there is a deprecation 
	  warning for sending #name (in TheManifestBuilder) which is out of
	  our control. "
	Deprecation raiseWarning: false