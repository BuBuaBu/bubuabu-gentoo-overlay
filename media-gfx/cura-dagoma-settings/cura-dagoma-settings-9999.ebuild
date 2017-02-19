EAPI=6

inherit git-r3

PYTHON_COMPAT=( python3_4 python3_5 )

DESCRIPTION="Dagoma settings for cura"
HOMEPAGE=""
SRC_URI=""
EGIT_REPO_URI="https://github.com/bubuabu/cura-dagoma.git"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="media-gfx/admesh"

PYTHON="python3"

src_compile() {
	export PYTHON="python3"
	emake || die "emake failed"
}

src_install() {
	export PREFIX="${D}usr/share/cura/resources"
	mkdir -p ${PREFIX}
	emake DESTDIR="${D}" install
}
