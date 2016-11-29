validation
check: context
	|checks this|
	checks := { 
		(self class >> #isAdditionError:).
		(self class >> #isConcatError:).
		(self class >> #isNilError:).
	}.
	"this := self."
	^ (checks collect: [ :check | check valueWithReceiver: self arguments: {context} ]) select: #notNil
	" TODO Kevin
		This gets ugly real quick. What we could do here is have all the check methods
		in a collection (so for example, have a method checks that returns
		{ self class >> #isAdditionError:. self class >> #isConcatError:. } and so on,
		and then you can use the methods Collection>>#collect: and Object>>#perform:with:
		to execute each method and create a list of errors. If we do this, we don't
		have all the ifNil: and ifNotNil: messages anymore.
	
	(self isConcatError: context)
		ifNotNil: [ :err | ^ {err} ]
		ifNil: [ (self isAdditionError: context)
				ifNotNil: [ :err | ^ {err} ]
				ifNil: [ (self isNilError: context) ifNotNil: [ :err | ^ {err} ] ifNil: [ ^ {} ] ] ]"