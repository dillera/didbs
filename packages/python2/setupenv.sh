CC="$DIDBS_CC"
CXX="$DIDBS_CXX"
CPPFLAGS="$DIDBS_CPPFLAGS -I$INSTALLDIR/include -I$INSTALLDIR/include/ncurses"
CFLAGS="$DIDBS_ISA_SWITCH $DIDBS_GCC_OPT_SWITCH"
CXXFLAGS="$CFLAGS"
LDFLAGS="$DIDBS_ISA_SWITCH -lpthread -L$INSTALLDIR/$DIDBS_LIBDIR"

PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
SSL="$INSTALLDIR"

export CC CXX CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL SSL

if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32:$LD_LIBRARYN32_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64:$LD_LIBRARYN64_PATH"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig:$PKG_CONFIG_PATH"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
