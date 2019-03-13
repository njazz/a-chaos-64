# a-chaos-64
This is a copy of André Sier "A-Chaos" library for MaxMSP updated for Max 7/8 32/64 bit

[![Build Status](https://travis-ci.org/njazz/a-chaos-64.svg?branch=master)](https://travis-ci.org/njazz/a-chaos-64)

A-Chaos Lib is a library of non-linear strange attractors for the max programming environment extended from Richard Dudas' Chaos Collection, including the source.

(24 dynamic non-linear systems :: a-baker, a-clifford, a-collatz, a-duffing, a-fibonacci, a-ginger, a-henon-heilles, a-henon, a-henonf, a-henonphase, a-ikeda, a-jong, a-logistic, a-logistic1, a-lorenz, a-lorenz.e,a-lyapunov, a-navier-stokes, a-navier-stokes.e, a-rossler, a-stein, a-stein1, a-torus and a-verhulst)

Original source code can be found here:
http://s373.net/code/A-Chaos-Lib/A-Chaos.html

another github mirror of original objects
https://github.com/s373/a-objects_maxmspjitter_00-07

-----

To build:

```
mkdir build
cd build
cmake ..
make
```

or

```
cd scripts
./build.sh
```

To make package / install package:

```
cd scripts
./make-package-osx.sh
```

or

```
./install-package-7-osx.sh
```

or

```
./install-package-8-osx.sh
```
