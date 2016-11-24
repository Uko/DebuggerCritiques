tests-as yet unclassified
errorsFor: aBlock
	" Evaluate the block and, if there is an Error, use the RuntimeChecker
	  to create ReRuntimeErrors accordingly. Return the errors or an empty
	  Collection. "
	^ [ aBlock value. { } ]
		on: Error
		do: [ :error | RuntimeChecker new check: error signalerContext ]