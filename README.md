# auto-llvm
Download and compile LLVM source code automatically on Windows.

# usage

## Quick Run
The **default source code version** is `7.1.0`.

Just run `./auto_setup.bat` and have a cup of coffee~


## Change source code version
edit `auto_setup.bat` file and change the `VERSION`(line 3) variable to your target version.



# About

the `bat` will automatically download the source code , unzip them , move the cfe (clang source code) to llvm src folder.

# dependency
- make sure `wget`,`xz`,`tar` command works
- remain about 8-10G space
- If you download the source code slowly , consider a proper proxy.
