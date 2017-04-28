initialization
initialize: aFileName
	name := aFileName.
	stream := FileStream forceNewFileNamed: aFileName.