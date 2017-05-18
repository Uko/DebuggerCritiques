tests
testIsNilError
	| errors closure |
	closure := [ nil foo ].
	errors := self errorsFor: closure.
	self assert: errors size equals: 1.
	self assert: errors anyOne class equals: ReNilError.
	self assert: errors anyOne errorContext closure equals: closure