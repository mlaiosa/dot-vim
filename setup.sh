#!/bin/sh

set -e
set -x

DIR=`dirname $0`
if [ "$DIR" != "" ]; then
	cd "$DIR"
fi
ln -s `readlink -f .vimrc` ~
git submodule init
git submodule update

cd bundle/command-t/ruby/command-t
ruby extconf.rb
make
