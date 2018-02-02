# Contributor: Thomas Liske <thomas@fiasko-nw.net>
# Maintainer: Thomas Liske <thomas@fiasko-nw.net>
pkgname=dpns
pkgver=0.2
pkgrel=0
pkgdesc="docker pull & save"
url="https://github.com/liske/dpns"
arch="noarch"
license="GPL"
depends="bash docker"
makedepends=""
install=""
subpackages=""
source="$pkgname-$pkgver.zip::https://github.com/liske/dpns/archive/$pkgver.zip"
builddir="$srcdir/$pkgname-$pkgver"
options="!check"

clean() {
    # default_prepare
    true
    # your custom code here
}

package() {
    make -C "$builddir" DESTDIR="$pkgdir" install
    mkdir -p "$pkgdir/etc/init.d"
    cp -v dpns "$pkgdir/etc/init.d/"
}

sha512sums="1dd1eb06c859ac1299df65fe96b26fe98a641df0fdb0dfcd27e1f0bce3b981f2bc3ebe7e39c68184eb84d0861f62fbd1a83da15f12beb9d6395e698fd9ef4ccc  dpns-0.2.zip"