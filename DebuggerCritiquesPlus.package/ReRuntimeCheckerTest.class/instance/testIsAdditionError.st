tests
testIsAdditionError
	| errors closure |
	closure := [ 3 + 'foo' ].
	errors := self errorsFor: closure.
	self assert: errors size equals: 1.
	self assert: errors anyOne class equals: ReAdditionError.
	self assert: errors anyOne errorContext closure equals: closure