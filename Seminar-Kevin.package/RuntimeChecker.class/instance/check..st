validation
check: context
	| checks |
	checks := {(self class >> #isAdditionError:).
	(self class >> #isConcatError:).
	(self class >> #isNilError:)}.
	^ (checks collect: [ :check | check valueWithReceiver: self arguments: {context} ]) select: #notNil