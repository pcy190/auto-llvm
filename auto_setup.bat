REM Powered by HAPPY
@echo off
set VERSION=7.1.0


REM wget http://releases.llvm.org/%VERSION%/cfe-%VERSION%.src.tar.xz
REM wget http://releases.llvm.org/%VERSION%/llvm-%VERSION%.src.tar.xz

set CFE_FILENAME=cfe-%VERSION%.src

set LLVM_FILENAME=llvm-%VERSION%.src



if not exist %LLVM_FILENAME%.tar.xz (
	wget https://github.com/llvm/llvm-project/releases/download/llvmorg-%VERSION%/llvm-%VERSION%.src.tar.xz
)
if not exist %LLVM_FILENAME%.tar (
	xz -d %LLVM_FILENAME%.tar.xz
)
if not exist %LLVM_FILENAME% (
	tar xvf %LLVM_FILENAME%.tar
)
if not exist %CFE_FILENAME%.tar.xz (
	wget https://github.com/llvm/llvm-project/releases/download/llvmorg-%VERSION%/cfe-%VERSION%.src.tar.xz
)
if not exist %CFE_FILENAME%.tar (
	xz -d %CFE_FILENAME%.tar.xz
)
if not exist %CFE_FILENAME% (
	tar xvf %CFE_FILENAME%.tar
)


mv %CFE_FILENAME% ./%LLVM_FILENAME%/tools/clang

REM prefer rename as clang

if %errorlevel% == 0 (

	echo [32m Setup Successfully! [0m

) else (

	echo [31m Setup Fail! [0m

)

pause