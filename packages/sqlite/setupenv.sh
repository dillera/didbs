#
CC=$DIDBS_CC
CPPFLAGS="-I$INSTALLDIR/include"
CFLAGS="$DIDBS_ARCH_CFLAGS -O3"
CXXFLAGS="$DIDBS_ARCH_CFLAGS -O3"
LDFLAGS="$DIDBS_ARCH_LDFLAGS -L$INSTALLDIR/lib"
PERL="$INSTALLDIR/bin/perl"
TEST_SHELL="$INSTALLDIR/bin/bash"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
export CC CPPFLAGS CFLAGS CXXFLAGS LDFLAGS PERL TEST_SHELL SHELL CONFIG_SHELL
