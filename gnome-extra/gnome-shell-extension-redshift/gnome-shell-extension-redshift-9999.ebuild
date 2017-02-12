#

EAPI=6

inherit git-r3 autotools

EGIT_REPO_URI="https://github.com/tommie-lie/gnome-shell-extension-redshift.git"

DESCRIPTION="redshift integration for GNOME Shell"
HOMEPAGE="https://github.com/tommie-lie/gnome-shell-extension-redshift"
LICENSE="GPLv3"

SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="x11-misc/redshift[geoclue]"

src_prepare() {
   ./autogen.sh
   default
}

src_configure() {
   econf
}

src_compile() {
   emake
}

