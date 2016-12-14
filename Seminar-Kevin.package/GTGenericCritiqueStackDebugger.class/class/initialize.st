tools registry
initialize
	self register.
	Smalltalk tools debuggerTool: self.
	Deprecation raiseWarning: false.