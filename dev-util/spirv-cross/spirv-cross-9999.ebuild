# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6


inherit eutils git-r3

DESCRIPTION="SPIRV-Cross is a practical tool and library for performing reflection on SPIR-V and disassembling SPIR-V back to high level languages."
HOMEPAGE="https://github.com/KhronosGroup/SPIRV-Cross"
EGIT_REPO_URI="https://github.com/KhronosGroup/SPIRV-Cross.git"

LICENSE="Apache-2.0"
IUSE="doc"
SLOT="0"

KEYWORDS="~amd64"

SPIRV_CROSS="${S}/SPIRV-Cross"

src_unpack() {
	git-r3_fetch ${EGIT_REPO_URI}
	git-r3_checkout ${EGIT_REPO_URI} "${SPIRV_CROSS}"
}

src_compile() {
	cd "${SPIRV_CROSS}"
	emake || die "cannot build SPIRV-Cross"
}

src_install() {
	mkdir -p "${D}"/usr/{bin,include}

	dobin "${SPIRV_CROSS}"/spirv-cross

	if use doc ; then
		dodoc "${SPIRV_CROSS}"/README.md
	fi

	dolib.a "${SPIRV_CROSS}"/libspirv-cross.a
	cp -R "${SPIRV_CROSS}"/include/spirv_cross "${D}"/usr/include
	cp -R "${SPIRV_CROSS}"/*.hpp "${D}"/usr/include/spirv_cross
}
