# Contributor: Thomas Liske <thomas@fiasko-nw.net>
# Maintainer: Thomas Liske <thomas@fiasko-nw.net>
pkgname=dpns
pkgver=0.3
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

sha512sums="fbc38010cf62186eac72872794ba35f30bf3d04f1b871c847429f0b5e687b860f1ae6499123eff4e07c46e7ec6cee30f231e2382085f9965302202efcf8736b4  dpns-0.3.zip"
