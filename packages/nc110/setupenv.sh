#
CC=$DIDBS_CC
CFLAGS="$DIDBS_ARCH_CFLAGS -O1"
#CFLAGS="$DIDBS_ARCH_CFLAGS -O3 -OPT:Olimit=7000"
LDFLAGS="$DIDBS_ARCH_LDFLAGS"
export CC CFLAGS LDFLAGS
