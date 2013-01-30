#!/bin/sh

set -e

aclocal
libtoolize -c
automake -c --add-missing
autoconf
