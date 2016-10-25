as yet unclassified
openOn: aMethod
	| window editor |
	method := aMethod.
	window := (StandardWindow labelled: 'Method editor with shout') model: self.
	editor := self newScrolledTextMorph.
	editor
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	window addMorph: editor fullFrame: LayoutFrame identity.
	^ window openInWorld