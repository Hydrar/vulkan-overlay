# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6


inherit eutils git-r3

DESCRIPTION="Shaderc compiler developer tool"
HOMEPAGE="https://github.com/google/shaderc"
EGIT_REPO_URI="https://github.com/google/shaderc.git"

LICENSE="Apache-2.0"
IUSE="doc -test"
SLOT="0"

KEYWORDS="~amd64"

#DEPEND="dev-util/glslang"

src_unpack() {
	git-r3_fetch ${EGIT_REPO_URI}
	git-r3_checkout ${EGIT_REPO_URI} "${S}"/shaderc

	# This really needs separating from the build so that RDEPEND and the above DEPEND flags can be used.
	git-r3_fetch "https://github.com/google/googletest.git"
	git-r3_fetch "https://github.com/KhronosGroup/glslang.git"
	git-r3_fetch "https://github.com/KhronosGroup/SPIRV-Tools.git"

	git-r3_checkout https://github.com/google/googletest.git "${S}"/shaderc/third_party/googletest
	git-r3_checkout https://github.com/KhronosGroup/glslang.git "${S}"/shaderc/third_party/glslang
	git-r3_checkout https://github.com/KhronosGroup/SPIRV-Tools.git "${S}"/shaderc/third_party/spirv-tools
}

src_compile() {
	cd "${S}"/shaderc
	cmake	\
		-DSHADERC_SKIP_TESTS=NO \
		-H. -Bbuild
	cd "${S}"/shaderc/build
	emake || die "cannot build Shaderc"
}

src_install() {
	mkdir -p "${D}"/usr/{bin,include}

	dobin "${S}"/shaderc/build/glslc/glslc

	if use doc ; then
		dodoc "${S}"/shaderc/build/glslc/README.html
	fi

	dolib.a "${S}"/shaderc/build/libshaderc/libshaderc.a
	cp -R "${S}"/shaderc/libshaderc/include/shaderc "${D}"/usr/include

}
