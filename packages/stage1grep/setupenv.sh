#
CC=$DIDBS_CC
CFLAGS="$DIDBS_ARCH_CFLAGS -O1 -I$INSTALLDIR/include"
LDFLAGS="$DIDBS_ARCH_LDFLAGS -L$INSTALLDIR/lib"
PATH=$INSTALLDIR/bin:$EXTRAARGS/bin:$PATH
LD_LIBRARYN32_PATH=$INSTALLDIR/bin:$EXTRAARGS/lib:$LD_LIBRARYN32_PATH
PKG_CONFIG_PATH="$INSTALLDIR/lib/pkgconfig"
export CC CFLAGS LDFLAGS PATH LD_LIBRARYN32_PATH PKG_CONFIG_PATH
