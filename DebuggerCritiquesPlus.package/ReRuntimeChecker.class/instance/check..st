validation
check: aContext
	^ TReRuntimeError users
			select: [ :each | each matches: aContext ]
			thenCollect: [ :each |
				each errorForContext: aContext
			]