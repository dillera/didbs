#!/bin/sh

DESTDIR=$1;
PATCHFILE=$2;
echo $DESTDIR;
echo $PATCHFILE;
cd $DESTDIR || exit -1;
$DPATCH -p0 <$PATCHFILE || exit -1;
exit 0;
