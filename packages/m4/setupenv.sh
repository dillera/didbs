#
CC=$DIDBS_CC
#CFLAGS="$DIDBS_ARCH_CFLAGS -O1"
#CFLAGS="$DIDBS_ARCH_CFLAGS -O2"
#CFLAGS="$DIDBS_ARCH_CFLAGS -O3 -OPT:Olimit=7000"
CFLAGS="$DIDBS_ARCH_CFLAGS -O3 -OPT:Olimit=0:space=ON -IPA -TENV:X=1 -CG:unique_exit=on -OPT:IEEE_arithmetic=1:roundoff=0:wrap_around_unsafe_opt=off:div_split=false:IEEE_comparisons=ON -LNO:opt=0 -woff 1009,1014,1107,1110,1116,1164,1185,1188,1204,1230,1233 -Wl,-woff,86,-woff,84"
LDFLAGS="$DIDBS_ARCH_LDFLAGS"
export CC CFLAGS LDFLAGS
