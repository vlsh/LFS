
mkdir -pv $CACHE

get-file http://ftp.gnu.org/gnu/findutils/findutils-4.4.2.tar.gz $CACHE/findutils-4.4.2.tar.gz || die "Fetching sources for package $NAME failed."
