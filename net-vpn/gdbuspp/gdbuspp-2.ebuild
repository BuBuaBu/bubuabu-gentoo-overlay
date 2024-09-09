# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="GDBus++ :: glib2 D-Bus C++ interface"
HOMEPAGE="https://codeberg.org/OpenVPN/gdbuspp"
SRC_URI="
	https://codeberg.org/OpenVPN/${PN}/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz
"
S="${WORKDIR}/${PN}"
LICENSE="AGPL-3+"
SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	>=dev-libs/glib-2.68.2-r1
"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"
