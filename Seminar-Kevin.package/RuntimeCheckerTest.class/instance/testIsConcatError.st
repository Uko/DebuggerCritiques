tests-as yet unclassified
testIsConcatError
	| errors closure |
	closure := [ 'foo' , 3 ].
	errors := self errorsFor: closure.
	self assert: errors size equals: 1.
	self assert: errors first class equals: ReConcatenationError.
	self assert: errors first errorContext closure equals: closure