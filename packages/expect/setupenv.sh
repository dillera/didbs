#
CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"
#CFLAGS="$DIDBS_ARCH_CFLAGS -O1"
#CXXFLAGS="$DIDBS_ARCH_CFLAGS -O1"
CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O2_NIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
CXXFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O2_NIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS -L$INSTALLDIR/lib"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
export CC CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL
