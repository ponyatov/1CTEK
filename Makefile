log.log: ./exe.exe
	./exe.exe > $@ && tail $(TAIL) $@
C = cpp.cpp
H = hpp.hpp
./exe.exe: $(C) $(H) $(RES)
	$(CXX) $(CXXFLAGS) -o $@ $(RES) $(C) $(L)
res.res: rc.rc
	windres $< -O coff -o $@
