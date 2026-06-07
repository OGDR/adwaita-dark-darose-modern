pkgname="adwaita-dark-darose-modern"
pkgver=1.0
pkgrel=1
pkgdesc="Modern Adwaita Dark fork with blue accent (XFCE/GTK2+GTK3)"
arch=('any')
url="https://github.com/YOURNAME/adwaita-dark-darose-modern"
license=('GPL3')

depends=('gnome-themes-extra')
makedepends=('git')
optdepends=('gtk2-ng-git: GTK2 engine support for legacy apps')

source=("git+${url}.git")
sha256sums=('SKIP')

package() {
    cd "$srcdir/adwaita-dark-darose-modern"

    install -dm755 "$pkgdir/usr/share/themes/$pkgname"

    cp -r gtk-2.0 gtk-3.0 index.theme install.sh \
        "$pkgdir/usr/share/themes/$pkgname/"

    chmod +x "$pkgdir/usr/share/themes/$pkgname/install.sh"
}