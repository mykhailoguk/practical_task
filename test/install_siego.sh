#!/bin/bash

curl -C - -O http://download.joedog.org/siege/siege-latest.tar.gz
tar -xvf siege-latest.tar.gz
cd siege-4.0.4/
./configure
make
make install
