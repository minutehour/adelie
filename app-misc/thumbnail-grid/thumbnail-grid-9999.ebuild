# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 desktop toolchain-funcs

DESCRIPTION="A simple tool to generate a grid of thumbnails from a video file."
HOMEPAGE="https://github.com/prokoma/thumbnail-grid"
EGIT_REPO_URI="https://github.com/prokoma/thumbnail-grid"

LICENSE="MIT"
SLOT="0"

PATCHES=(
	"$FILESDIR"/quiet.diff
)

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	emake
}

src_install() {
	dobin "$PN"
}
