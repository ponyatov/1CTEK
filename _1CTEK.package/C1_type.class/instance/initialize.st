initialization
initialize
	| inst |
	inst := super initialize.
	inst val: tag.
	inst tag.
	^ inst