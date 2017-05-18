tests
testIsConcatError
	| errors closure |
	closure := [ 'foo' , 3 ].
	errors := self errorsFor: closure.
	self assert: errors size equals: 1.
	self assert: errors anyOne class equals: ReConcatenationError.
	self assert: errors anyOne errorContext closure equals: closure