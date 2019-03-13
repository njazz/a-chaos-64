#!/bin/bash
./build.sh

cd ..

mkdir package
mkdir package/a-chaos-64
mkdir package/a-chaos-64/externals

cp -r build/a*.mxo package/a-chaos-64/externals/
