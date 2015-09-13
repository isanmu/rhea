#!/bin/sh
set -e
# check to see if iverilog folder is empty
if [ ! -d "$HOME/iverilog/libs" ]; then
    git clone git://github.com/steveicarus/iverilog.git
    cd iverilog
    sh autoconf.sh
    ./configure
    make
    make install
else
  echo 'Using cached directory.';
fi
