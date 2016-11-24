as yet unclassified
check: context
	(self isConcatError: context)
		ifNotNil: [ :err | ^ {err} ]
		ifNil: [ (self isAdditionError: context)
				ifNotNil: [ :err | ^ {err} ]
				ifNil: [ (self isNilError: context) ifNotNil: [ :err | ^ {err} ] ifNil: [ ^ {} ] ] ]