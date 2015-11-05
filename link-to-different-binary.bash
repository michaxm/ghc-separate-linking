#!/bin/bash -e

rm -rf build
mkdir -p build
ghc -outputdir=build app/UsesModule.hs app/Module.hs -i src/Lib -no-link

mkdir -p build2
ghc -outputdir=build2 app2/Module.hs -no-link
ghc -outputdir=build2 build/Main.o build2/Module.o -o build2/linkedwithdifferentmodule
build2/linkedwithdifferentmodule

rm -rf build
rm -rf build2
