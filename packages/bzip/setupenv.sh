#
CC=$DIDBS_CC
BIGFILES="-D_FILE_OFFSET_BITS=64"
#CFLAGS="$DIDBS_ARCH_CFLAGS -O1 -Wall $BIGFILES"
CFLAGS="$DIDBS_ARCH_CFLAGS -O3 -OPT:Olimit=7000 -IPA -Wall $BIGFILES"
LDFLAGS="$DIDBS_ARCH_LDFLAGS"
export CC CFLAGS LDFLAGS BIGFILES
