# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python3_4 )
inherit git-2
inherit distutils-r1

DESCRIPTION="Magnificent app which corrects your previous console command,'fuck' will try to fix console command, "
HOMEPAGE="https://github.com/nvbn/thefuck"
EGIT_REPO_URI="https://github.com/nvbn/${PN}.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-python/decorator
	dev-python/colorama
	dev-python/psutil
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/thefuck-${PV}/thefuck"

PATCHES=( "${FILESDIR}"/${PN}-9999.patch )

