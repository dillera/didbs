#
GBS0_INSTALL_DIR="$INSTALLDIR/gbs0"

CC=$DIDBS_CC
CPPFLAGS="$DIDBS_CPPFLAGS"
CFLAGS="$CPPFLAGS $DIDBS_ARCH_CFLAGS $DIDBS_O1_CFLAGS $DIDBS_NOWARN_CFLAGS"
LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS"
#CFLAGS="$DIDBS_ARCH_CFLAGS $DIDBS_O3_NOIPA_CFLAGS $DIDBS_NOWARN_CFLAGS"
#LDFLAGS="$DIDBS_ARCH_LDFLAGS $DIDBS_NOWARN_LDFLAGS"
SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$INSTALLDIR/bin/bash"
PERL="$INSTALLDIR/bin/perl"
PATH="$GBS0_INSTALL_DIR/bin:$PATH"
LD_LIBRARYN32_PATH="$GBS0_INSTALL_DIR/lib:$LD_LIBRARYN32_PATH"
LD_LIBRARY_PATH="$GBS0_INSTALL_DIR/lib:$LD_LIBRARY_PATH"
export CC CPPFLAGS CFLAGS LDFLAGS SHELL CONFIG_SHELL PERL PATH LD_LIBRARYN32_PATH LD_LIBRARY_PATH GBS0_INSTALL_DIR
