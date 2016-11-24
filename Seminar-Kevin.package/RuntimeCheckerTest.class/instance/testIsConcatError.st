tests-as yet unclassified
testIsConcatError
	| errors |
	errors := self errorsFor: [ 'foo', 3 ].
	self assert: errors size equals: 1.
	self assert: errors first class equals: ReConcatenationError