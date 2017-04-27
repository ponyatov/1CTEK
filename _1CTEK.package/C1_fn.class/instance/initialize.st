initialization
initialize
	| inst |
	inst := super initialize.
	inst type: C1_void new.
	inst arg: C1_void new.
	^ inst