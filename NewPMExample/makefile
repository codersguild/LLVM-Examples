BUILD_PATH=${HOME}/llvm-project
LLVM_CONFIG=llvm-config
CXX=clang++
# CXX=$(BUILD_PATH)/clang++ -std=c++17 -O0
# removed -g flag, add if needed
CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -std=c++17 -O1
# CXXFLAGS= `$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti -Xclang -disable-O0-optnone
LDFLAGS=`$(LLVM_CONFIG) --ldflags` -Wl,-znodelete
source=FunctionPass
passname=printpass

ifdef VERBOSE
.SILENT:
endif

.PHONY: test 

all: build example visual runpass

build: $(source).cpp
	mkdir -p build
	$(CXX) $(CXXFLAGS) -c $(source).cpp -o build/$(source).cpp.o
	$(CXX) $(CXXFLAGS) -shared $(source).cpp -o build/$(source).cpp.so $(LDFLAGS)

run: build
	clang -Xclang -load -Xclang build/$(source).cpp.so -std=c++11 example1.cpp -o example
	./example
visual: example
	opt -instnamer -mem2reg -enable-new-pm=0 --ipsccp --domtree example1.bc -S -o example1.mem2reg.ll
	opt -dot-cfg-only --view-cfg-only -cfg-func-name=main example1.mem2reg.ll -disable-output -enable-new-pm=0
	opt -dot-dom-only --view-cfg-only -cfg-func-name=main example1.mem2reg.ll -disable-output -enable-new-pm=0

	mv .main.dot cfg_example1.dot
	dot -T pdf cfg_example1.dot -o cfg_example1.pdf
	dot -T pdf domonly.main.dot -o domtree.pdf
	rm -rf *.dot

example: build
	clang++ -fno-discard-value-names -c -emit-llvm -g -O1 example1.cpp -o example1.bc
	
runpass:
	opt -load-pass-plugin=build/$(source).cpp.so -disable-output -enable-new-pm=1 -passes=$(passname) < example1.bc
	rm -rf example1.bc
clean: 
	rm -rf build *.bc *.ll *.pdf *.dot *.a *.o 
