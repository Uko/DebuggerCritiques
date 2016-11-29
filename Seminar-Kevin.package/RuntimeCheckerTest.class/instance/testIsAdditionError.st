tests-as yet unclassified
testIsAdditionError
	| errors closure |
	closure := [ 3 + 'foo' ].
	errors := self errorsFor: closure.
	self assert: errors size equals: 1.
	self assert: errors first class equals: ReAdditionError.
	self assert: errors first errorContext closure equals: closure