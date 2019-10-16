CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"

if [ "ne$DIDBS_CC" == "negcc" ]; then
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_GCC_OPT_SWITCH -I$INSTALLDIR/include"
    LDFLAGS="$DIDBS_ARCH_LDFLAGS -L$INSTALLDIR/$DIDBS_LIBDIR"
else
    CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS -I$INSTALLDIR/include"
    LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/$DIDBS_LIBDIR"
fi
CXXFLAGS="$CFLAGS"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
export CC CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32:$LD_LIBRARYN32_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64:$LD_LIBRARYN64_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
