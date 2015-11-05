#!/bin/bash -e
rm -rf build
mkdir -p build
ghc -outputdir=build app/Standalone.hs -c
ghc -outputdir=build build/Main.o -o build/standalone
build/standalone

rm -rf build
mkdir -p build
ghc -outputdir=build app/UsesLib.hs -i src/Lib.hs -no-link
ghc -outputdir=build build/Main.o build/Lib.o -o build/useslib
build/useslib

rm -rf build
mkdir -p build
ghc -outputdir=build app/UsesModule app/Module -i src/Lib -no-link
ghc -outputdir=build build/Main.o build/Module.o build/Lib.o -o build/usesmodule
build/usesmodule

