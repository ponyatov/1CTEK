instance creation
new: aFileName
	| inst |
	inst := super new: aFileName.
	inst put: (
		'log.log: ./exe.exe' , String lf ,
		String tab , './exe.exe > $@ && tail $(TAIL) $@' , String lf ,
		'C = cpp.cpp' , String lf , 'H = hpp.hpp' , String lf ,
		'./exe.exe: $(C) $(H) $(RES)' , String lf ,
		String tab , '$(CXX) $(CXXFLAGS) -o $@ $(RES) $(C) $(L)' , String lf ,
		'res.res: rc.rc' , String lf ,
		String tab , 'windres $< -O coff -o $@' , String lf ).
	^ inst initialize