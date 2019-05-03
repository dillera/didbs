#
GBSTEST_INSTALL_DIR="$INSTALLDIR/gbstest"

CC="gcc --std=c99 $DIDBS_CPPFLAGS"
CXX="g++ $DIDBS_CPPFLAGS"
CPPFLAGS="$DIDBS_CPPFLAGS"
CFLAGS="$DIDBS_ARCH_CFLAGS"
CXXFLAGS="$DIDBS_ARCH_CFLAGS"
LDFLAGS=""

SHELL="$INSTALLDIR/bin/bash"
CONFIG_SHELL="$SHELL"
SHELL_PATH="$SHELL"
PATH="$GBSTEST_INSTALL_DIR/bin:$PATH"
LD_LIBRARYN32_PATH="$GBSTEST_INSTALL_DIR/lib:$LD_LIBRARYN32_PATH"
LD_LIBRARY_PATH="$GBSTEST_INSTALL_DIR/lib:$LD_LIBRARY_PATH"
PKG_CONFIG_PATH="$INSTALLDIR/lib/pkgconfig"
export CC CFLAGS LDFLAGS SHELL CONFIG_SHELL SHELL_PATH PATH LD_LIBRARYN32_PATH LD_LIBRARY_PATH PKG_CONFIG_PATH GBSTEST_INSTALL_DIR
