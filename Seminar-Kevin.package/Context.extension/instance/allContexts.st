*Seminar-Kevin
allContexts
	" Return all context (including self) that are below me. "
	| cs ctx |
	cs := OrderedCollection new.
	cs add: self.
	ctx := self sender.
	[ ctx ~= nil ] whileTrue: [
		cs add: ctx.
		ctx := ctx sender.
	].
	^ cs