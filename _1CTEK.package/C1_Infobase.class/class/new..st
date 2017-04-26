instance creation
new: aName
	| inst |
	inst := super new.
	inst name: aName.
	inst lang: C1_Language new.
	^ inst