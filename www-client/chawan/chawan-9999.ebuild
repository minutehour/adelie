# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 desktop toolchain-funcs

DESCRIPTION="TUI web browser"
HOMEPAGE="https://chawan.net/"
EGIT_REPO_URI="https://git.sr.ht/~bptato/$PN"

LICENSE="Unlicense"
SLOT="0"

RDEPEND="
	app-arch/brotli
	dev-libs/openssl
	net-libs/libssh2
"
DEPEND="${RDEPEND}
	dev-lang/nim
"
BDEPEND="
	virtual/pkgconfig
"
