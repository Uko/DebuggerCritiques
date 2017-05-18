accessing
gtInspectorRePropertyIn: composite
	| morphPresentation |
	morphPresentation := composite morph.
	morphPresentation
		title: 'Location';
		display: [ | editor | editor := (SimpleMethodViewWindow new
				setMethod: self sourceAnchor sourceEntity) editor.
				self errorContext annotateRubricText: editor model.
				editor selectionInterval: sourceAnchor interval.
				self errorContext method annotateRubricText: editor model.
				editor
				 ]