# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=6
inherit eutils git-r3
DESCRIPTION="Program for processing triangulated solid meshes"
HOMEPAGE="http://www.varlog.com/admesh-htm"
#SRC_URI="https://github.com/admesh/admesh/releases/download/v${PV}/admesh-${PV}.tar.gz"
EGIT_REPO_URI="https://github.com/admesh/admesh.git"
EGIT_COMMIT="v${PV}"
LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND=""
RDEPEND="${DEPEND}"

src_configure() {
	${S}/autogen.sh
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
        econf
    fi
}

