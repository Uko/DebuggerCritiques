as yet unclassified
attachExtraBehaviourToPresentationsIn: aComposite for: anObject
	aComposite presentations do: [ :aPresentation |
		anObject gtInspectorActions asOrderedCollection do: [ :each | aPresentation addAction: each ]. 
		aPresentation addAction: 
			((self closeActionFor: aPresentation)
				condition: [ :currentPresentation |
					self panes size > 1 and: [ 
						self isPresentation: aPresentation inPane: self panes last  ] ] ) ]