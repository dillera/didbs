CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"

CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O1_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"

#CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
#LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOIPA_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"

CXXFLAGS="$CFLAGS"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"

EXPATINCPATH="$INSTALLDIR/include"
EXPATLIBPATH="$INSTALLDIR/lib"

export CC CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL EXPATINCPATH EXPATLIBPATH
