tools registry
initialize
	" Register me and set me as the default debugger. "
	self register.
	Smalltalk tools debuggerTool: self.
	" We disable the deprecation warning blocks because CompiledMethod>>#critiques
	  calls TheManifestBuilder>>#manifsetOf:, which in turn results in uses of the
	  deprecated Object>>#name. "
	Deprecation raiseWarning: false.