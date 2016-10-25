as yet unclassified
getText
	"^ (String>>#asNumber) sourceCode"
	^ method ifNil: [''] ifNotNil: [:m | m sourceCode]