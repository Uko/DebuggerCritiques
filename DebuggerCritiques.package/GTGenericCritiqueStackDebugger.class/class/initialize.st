accessing
initialize
	" Register me and set me as the default debugger. "
	self register.
	Smalltalk tools debuggerTool: self.
