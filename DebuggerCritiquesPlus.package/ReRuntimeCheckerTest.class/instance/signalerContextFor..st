tests
signalerContextFor: aBlock
	" Evaluate the block and, if there is an Error, return the signaler context "

	^ [ aBlock value.
	{} ]
		on: Error
		do: [ :error | error signalerContext ]