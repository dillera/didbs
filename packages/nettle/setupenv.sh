#
CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"
CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS"
CXXFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS -L$INSTALLDIR/lib"
LD_LIBRARYN32_PATH="$INSTALLDIR/lib"
export CC CPPFLAGS CFLAGS LDFLAGS LD_LIBRARYN32_PATH
