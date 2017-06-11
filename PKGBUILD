# Maintainer: Oliver Bestwalter <oliver@bestwalter.de>
pkgname=i3configger
pkgver=0.7.5
pkgrel=1
pkgdesc='i3 config manipulation tool'
arch=('any')
url='http://oliver.bestwalter.de/i3configger/'
# python-docutils is a actually python-daemon dependency (bug already filed)
depends=('python' 'python-setuptools' 'python-psutil' 'python-daemon' 'python-docutils')
license=('MIT')
source=("https://pypi.io/packages/source/i/i3configger/i3configger-${pkgver}.tar.gz")
sha256sums=('1c1cd542f1a604ca1340cde47274ffff4de9fb1e16f1ac9ee55a060c2f228a3f')

package() {
    cd "$srcdir"/i3configger-$pkgver
    python setup.py install --prefix=/usr --root="$pkgdir" --optimize=1
    install -D -m644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
