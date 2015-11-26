#!/bin/bash -e

rm -rf build
mkdir -p build
echo compiling 1
ghc -outputdir=build app/UsesModule.hs app/Module.hs -i src/Lib -no-link

mkdir -p build2
echo compiling 2
ghc -outputdir=build2 app2/UsesModuleToo.hs app/Module.hs src/Lib -no-link
echo linking 1 + 2
ghc -outputdir=build2 build2/Main.o build/Module.o build/Lib.o -o build2/linkedwithdifferentmain
build2/linkedwithdifferentmain

rm -rf build
rm -rf build2
