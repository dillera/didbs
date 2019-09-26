#
CC=$DIDBS_CC
CPPFLAGS="$DIDBS_MP_CPPFLAGS -I$INSTALLDIR/include"
CFLAGS="$DIDBS_ARCH_CFLAGS -O1"
LDFLAGS="$DIDBS_ARCH_LDFLAGS"
export CC CPPFLAGS CFLAGS LDFLAGS
if [ "ne$DIDBS_LIBDIR" == "nelib32" ]; then
    LDFLAGS="$LDFLAGS -L$INSTALLDIR/lib32"
    LD_LIBRARYN32_PATH="$INSTALLDIR/lib32"
    PKG_CONFIG_PATH="$INSTALLDIR/lib32/pkgconfig"
    export LD_LIBRARYN32_PATH PKG_CONFIG_PATH
else
    LDFLAGS="$LDFLAGS -L$INSTALLDIR/lib64"
    LD_LIBRARYN64_PATH="$INSTALLDIR/lib64"
    PKG_CONFIG_PATH="$INSTALLDIR/lib64/pkgconfig"
    export LD_LIBRARYN64_PATH PKG_CONFIG_PATH
fi
