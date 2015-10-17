code-generation
generateClass: aClassName superclass: aSuperclassName
	" Create the class aClassName as subclass of aSuperclassName and set the target class to aClassName for future method compilations"

	(self classFor: aSuperclassName)
		subclass: aClassName asSymbol
		instanceVariableNames: String empty
		classVariableNames: self classVarNames				
		poolDictionaries: String empty
		category: self targetClassCategory.
	self targetClass: (self classFor: aClassName)