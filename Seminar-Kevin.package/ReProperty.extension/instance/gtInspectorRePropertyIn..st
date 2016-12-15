*Seminar-Kevin
gtInspectorRePropertyIn: composite
	<gtInspectorPresentationOrder: 0>
	| morphPresentation |
	morphPresentation := composite morph.
	morphPresentation
		title: 'Location';
		display: [ | editor | editor := (SimpleMethodViewWindow new
				setMethod: self sourceAnchor sourceEntity) editor.
				editor selectionInterval: sourceAnchor interval.
				editor
				 ]