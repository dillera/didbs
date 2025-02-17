#
CC=$DIDBS_CC
CXX=$DIDBS_CXX
CPPFLAGS="$DIDBS_MP_CPPFLAGS"
if [ "ne$DIDBS_CC" == "negcc" ]; then
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_GCC_OPT_SWITCH"
    LDFLAGS="$DIDBS_ARCH_LDFLAGS"
else
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O2_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
    LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS"
fi
CFLAGS="$CFLAGS -I$INSTALLDIR/include"
LDFLAGS="$LDFLAGS -L$INSTALLDIR/$DIDBS_LIBDIR"
CXXFLAGS="$CFLAGS"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32:$LD_LIBRARYN32_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64:$LD_LIBRARYN64_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
