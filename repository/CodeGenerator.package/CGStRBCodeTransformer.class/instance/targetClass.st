accessing
targetClass
	" See comment in owner's targetClass method "

	| className model theClass |
	
	className := self owner targetClass name.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className)
				model: model;
				yourself.	
	^ theClass