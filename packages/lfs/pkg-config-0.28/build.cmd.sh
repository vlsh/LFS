
PREFIX=/usr
DOCDIR=/usr/share/doc/$NAME

cd $SRC/*/ || die

$SRC/*/configure --prefix=$PREFIX        \
            --with-internal-glib  \
            --disable-host-tool   \
            --docdir=$DOCDIR      \
            || die "Configuring $NAME failed."

make || die "Building $NAME failed."

# Reset fake root directory
rm -rf $BUILD &> /dev/null
mkdir -v -p $BUILD

# Install to fake root
make DESTDIR=$BUILD install || die
