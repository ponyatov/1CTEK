initialization
initialize: aPath
	self path: aPath.
	self mk: (C1_Makefile create: self path , '/Makefile').
	self bat: (C1_File create: self path , '/bat.bat')