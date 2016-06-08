# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6


inherit eutils cmake-utils git-r3

DESCRIPTION="SPIR-V developer tools"
HOMEPAGE="https://github.com/KhronosGroup/SPIRV-Tools"
EGIT_REPO_URI="https://github.com/KhronosGroup/SPIRV-Tools.git"

LICENSE="Khronos"
IUSE=""
SLOT="0"

KEYWORDS="~amd64"

src_configure() {
	#mycmakeargs=(
	#)

	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
	#use doc && cmake-utils_src_compile doc_openscenegraph doc_openthreads
}
