# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Next generation OpenVPN implementation, building on features available on modern Linux distributions"
HOMEPAGE="https://community.openvpn.net/openvpn/wiki/OpenVPN3Linux"

EGIT_REPO_URI="https://codeberg.org/OpenVPN/openvpn3-linux.git"
EGIT_COMMIT="v${PV}"
# TODO: use asio from system
EGIT_SUBMODULES=( openvpn3-core asio )

LICENSE="AGPL-3+"
SLOT="0"
KEYWORDS="amd64"
IUSE="+openssl mbedtls"

#TODO: selinux
CDEPEND="mbedtls? ( net-libs/mbedtls:= )
		openssl? ( >=dev-libs/openssl-1.0.2 )
"
#TODO: dbus-1, gio-2.0, gio-unix-2.0, libnl-3.0, python3
RDEPEND="
	acct-group/openvpn
	acct-user/openvpn
	>=dev-libs/tinyxml2-8.0.0
	dev-libs/jsoncpp
	>=dev-libs/glib-2.68.2-r1
	>=sys-libs/libcap-ng-0.8.2-r1
	dev-cpp/asio
	net-vpn/gdbuspp
"
DEPEND="${RDEPEND}"
BDEPEND="virtual/pkgconfig"

src_configure() {
	local emesonargs=(
		-Dunit_tests=disabled
		-Dtest_programs=disabled
		-Dselinux=disabled
		#-Dasio_path='/usr/include'
	)
	meson_src_configure
}

pkg_postinst() {
	mkdir -p /var/lib/openvpn3/configs
	chown -R openvpn:openvpn /var/lib/openvpn3
}

