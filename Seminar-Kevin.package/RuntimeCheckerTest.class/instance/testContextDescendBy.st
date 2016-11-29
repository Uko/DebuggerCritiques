tests-as yet unclassified
testContextDescendBy
	"TODO"

	| runtimeChecker c0 |
	runtimeChecker := RuntimeChecker new.
	c0 := self signalerContextFor: [ 3 + 'foo' ].
	self assert: c0 sender equals: (runtimeChecker context: c0 descendBy: 1).
	self assert: c0 sender sender equals: (runtimeChecker context: c0 descendBy: 2).
	self assert: c0 sender sender sender equals: (runtimeChecker context: c0 descendBy: 3).
	self assert: c0 sender sender sender sender equals: (runtimeChecker context: c0 descendBy: 4).
	self assert: (runtimeChecker context: c0 descendBy: 99999) isNotNil