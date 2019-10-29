CPPFLAGS="-I$INSTALLDIR/include"

CC=gcc
CXX=g++
# Use libdicl for better printf format string parsing.
CFLAGS="$DIDBS_ISA_SWITCH $DIDBS_GCC_OPT_SWITCH -I$INSTALLDIR/include -I$INSTALLDIR/include/libdicl-0.1"
#CFLAGS="$DIDBS_ISA_SWITCH -g -O2 -I$INSTALLDIR/include -I$INSTALLDIR/include/libdicl-0.1"
LDFLAGS="$DIDBS_ISA_SWITCH -L$INSTALLDIR/$DIDBS_LIBDIR -ldicl-0.1"

CXXFLAGS="$CFLAGS"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"

export CC CXX CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL PATH
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32:$LD_LIBRARYN32_PATH/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64:$LD_LIBRARYN64_PATH/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
