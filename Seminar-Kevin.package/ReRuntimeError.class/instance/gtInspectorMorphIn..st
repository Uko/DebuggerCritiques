inspector extensions
gtInspectorMorphIn: composite
	<gtInspectorPresentationOrder: 10>
	| morphPresentation |
	" TODO Kevin:
		- Change this such that the correct method will be displayed.
		- The tab now shows the window with border and everything; refactor SimpleMethodView
		  by splitting it into two classes such that only the code morph is shown.	
	"
	morphPresentation := composite morph.
	morphPresentation
		title: 'Location';
		display: [ SimpleMethodViewWindow new
				setMethod: self errorContext;
				yourself ]