#
GBS4_INSTALL_DIR="$INSTALLDIR/gbs4"
GBS5_INSTALL_DIR="$INSTALLDIR/gbs5"

CC=gcc
CXX=g++
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
SHELL_PATH="$INSTALLDIR/bin/bash"
PERL="$INSTALLDIR/bin/perl"
PERL_PATH="$INSTALLDIR/bin/perl"
PATH="$GBS5_INSTALL_DIR/bin:$GBS4_INSTALL_DIR/bin:$PATH"
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS SHELL CONFIG_SHELL SHELL_PATH PERL PERL_PATH GBS5_INSTALL_DIR GBS4_INSTALL_DIR PATH
