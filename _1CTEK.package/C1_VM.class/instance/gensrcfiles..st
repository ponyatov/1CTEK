initialization
gensrcfiles: prefix
	" hpp.hpp "
	hpp := C1_Cpp new: ( prefix , 'hpp.hpp' ).
	hpp close.
	" cpp.cpp "
	cpp := C1_Cpp new: ( prefix , 'cpp.cpp' ).
	cpp put: 'main(){}' , String lf.
	cpp close.
	" Makefile "
	mk := C1_Makefile new: ( prefix , 'Makefile' ).
	mk put: (
		'log.log: ./exe.exe' , String lf,
		String tab , './exe.exe > $@ && tail $(TAIL) $@' , String lf ,
		'C = cpp.cpp' , String lf , 'H = hpp.hpp' , String lf ,
		'./exe.exe: $(C) $(H) $(RES)' , String lf ,
		String tab , '$(CXX) $(CXXFLAGS) -o $@ $(RES) $(C) $(L)' , String lf ,
		'res.res: rc.rc' , String lf ,
		String tab , 'windres $< -O coff -o $@' , String lf ).
	mk close.
	" bat.bat "
	rc := C1_File new: ( prefix , 'rc.rc' ).
	rc put: 'LOGO ICON "ico/beacon64x64.ico"'.
	rc close.
	" bat.bat "
	bat := C1_File new: ( prefix , 'bat.bat' ).
	bat put:
		'@gvim -p ',
		'hpp.hpp cpp.cpp Makefile rc.rc ',
		'bat.bat .gitignore' , String lf .
	bat close.
	" .gitignore "
	gitignore := C1_File new: ( prefix , '.gitignore' ).
	gitignore put:
		'*~' , String lf ,
		'*.swp' , String lf ,
		'exe.exe' , String lf ,
		'log.log' , String lf ,
		'res.res' , String lf .
	gitignore close