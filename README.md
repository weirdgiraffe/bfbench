sorry windoze, your brainfuck could not be compiled with clang and llvm.

	Checking connectivity... done.
	-- The C compiler identification is GNU 4.9.2
	-- The CXX compiler identification is Clang 3.5.0
	-- Check for working C compiler: /usr/bin/cc
	-- Check for working C compiler: /usr/bin/cc -- works
	-- Detecting C compiler ABI info
	-- Detecting C compiler ABI info - done
	-- Check for working CXX compiler: /usr/bin/c++
	-- Check for working CXX compiler: /usr/bin/c++ -- works
	-- Detecting CXX compiler ABI info
	-- Detecting CXX compiler ABI info - done
	-- Boost version: 1.55.0
	-- LLVM llvm-config found at: /usr/bin/llvm-config
	-- LLVM version: 3.5.0
	-- LLVM CXX flags: -I/usr/lib/llvm-3.5/include  -DNDEBUG -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS-D__STDC_LIMIT_MACROS -g -O2 -fomit-frame-pointer -std=c++11 -fvisibility-inlines-hidden -fno-exceptions -fPIC -Woverload
	ed-virtual -ffunction-sections -fdata-sections -Wcast-qual
	-- LLVM LD flags: -L/usr/lib/llvm-3.5/lib
	-- LLVM core libs: -lLLVMLinker -lLLVMBitWriter -lLLVMBitReader -lLLVMInstrumentation -lLLVMipo -lLLVMVectorize -lLLVMScalarOpts -lLLVMInstCombine -lLLVMTransformUtils -lLLVMipa -lLLVMAnalysis -lLLVMTarget -lLLVMMC -lLLVMCore -lLLVMSupport
	-- LLVM JIT libs: -lLLVMX86Disassembler -lLLVMX86AsmParser -lLLVMX86CodeGen -lLLVMSelectionDAG -lLLVMAsmPrinter -lLLVMX86Desc -lLLVMObject -lLLVMMCParser -lLLVMBitReader -lLLVMX86Info -lLLVMX86AsmPrinter -lLLVMX86Utils -lLLVMJIT -lLLVMExec
	utionEngine -lLLVMCodeGen -lLLVMScalarOpts -lLLVMInstCombine -lLLVMTransformUtils -lLLVMipa -lLLVMAnalysis -lLLVMTarget -lLLVMMC -lLLVMCore -lLLVMSupport
	-- LLVM JIT objs:
	-- Found LLVM: /usr/lib/llvm-3.5/include
	-- Configuring done
	-- Generating done
	-- Build files have been written to: /windoze-brainfuck-build
	Scanning dependencies of target bf
	[ 16%] Building CXX object CMakeFiles/bf.dir/bfcodegen.cpp.o
	In file included from /windoze-brainfuck/bfcodegen.cpp:9:
	/windoze-brainfuck/bfcodegen.h:19:10: fatal error: 'llvm/Module.h' file not found
	#include <llvm/Module.h>
		 ^
		 1 error generated.
	 CMakeFiles/bf.dir/build.make:54: recipe for target 'CMakeFiles/bf.dir/bfcodegen.cpp.o' failed
	 make[2]: *** [CMakeFiles/bf.dir/bfcodegen.cpp.o] Error 1
	 CMakeFiles/Makefile2:60: recipe for target 'CMakeFiles/bf.dir/all' failed
	 make[1]: *** [CMakeFiles/bf.dir/all] Error 2
	 Makefile:76: recipe for target 'all' failed
	 make: *** [all] Error 2

and with gcc it looks for LLVM, so, sorry, you are out

sorry, redevined, your interpreter is to slow to be measured with other interpreters. It simply doesn't work
sorry takano32, your go and python code simply doesn't work 
sorry jakosa, your interpreter doesn't work
