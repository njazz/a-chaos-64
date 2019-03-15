#!/bin/bash
./build.sh

cd ..

mkdir package
mkdir package/a-chaos-64
mkdir package/a-chaos-64/externals
mkdir package/a-chaos-64/help
mkdir package/a-chaos-64/extras

cp -r build/a*.mxo package/a-chaos-64/externals/
cp -r help/*.maxhelp package/a-chaos-64/help/
cp -r extras/*.* package/a-chaos-64/extras/
