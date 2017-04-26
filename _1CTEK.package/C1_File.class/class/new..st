instance creation
new: aFileName
	| inst |
	inst := self new.
	inst filename: aFileName.
"	inst stream: ( FileStream fileNamed: aFileName )."
	( FileStream fileNamed: aFileName ) close.
	^ inst