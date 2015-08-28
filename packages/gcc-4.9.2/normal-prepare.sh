
rm -rfv $SRC &> /dev/null
rm -rfv $SCRATCH &> /dev/null

mkdir -pv $SRC

cd $SRC

GCC_TAR=$CACHE/gcc-4.9.2.tar.bz2

[ -f $GCC_TAR ] || die "Mising required tar. Forgot to fetch?"
tar -xvf $GCC_TAR || die "Unpacking $NAME sources failed."
