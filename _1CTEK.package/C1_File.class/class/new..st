instance creation
new: aFileName
	| inst |
	inst := self new.
	inst filename: aFileName.
	inst stream: ( FileStream forceNewFileNamed: aFileName ).
	^ inst