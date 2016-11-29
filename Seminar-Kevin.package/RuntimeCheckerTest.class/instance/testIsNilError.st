tests-as yet unclassified
testIsNilError
	| errors closure |
	closure := [ nil foo ].
	errors := self errorsFor: closure.
	self assert: errors size equals: 1.
	self assert: errors first class equals: ReNilError.
	self assert: errors first errorContext closure equals: closure