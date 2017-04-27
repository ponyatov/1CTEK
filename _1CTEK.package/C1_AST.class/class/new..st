instance creation
new: aVal
	| inst |
	inst := super new.
	inst tag: 'sym'.
	inst val: aVal asString.
	^ inst initialize