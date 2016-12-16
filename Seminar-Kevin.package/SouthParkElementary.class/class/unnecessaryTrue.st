StaticCritiques
unnecessaryTrue
	| isRaining |
	isRaining := true.
	self halt.
	(isRaining = true) ifTrue: [ ^ 'take umbrella' ]