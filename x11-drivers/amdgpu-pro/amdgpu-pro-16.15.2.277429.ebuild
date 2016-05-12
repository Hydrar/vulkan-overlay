# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

MULTILIB_COMPAT=( abi_x86_{32,64} )
inherit eutils multilib-build unpacker

DESCRIPTION="AMD precompiled drivers for Radeon Evergreen (HD5000 Series) and newer chipsets"
HOMEPAGE="http://support.amd.com/en-us/kb-articles/Pages/AMDGPU-PRO-Beta-Driver-for-Vulkan-Release-Notes.aspx"
BUILD_VER=16.15.2-277429
SRC_URI="https://www2.ati.com/drivers/beta/amdgpu-pro_${BUILD_VER}.tar.xz"

RESTRICT="fetch strip"

# The binary blobs include binaries for other open sourced packages, we don't want to include those parts, if they are
# selected, they should come from portage.
IUSE="gles2 opencl +opengl vdpau +vulkan"

LICENSE="AMD GPL-2 QPL-1.0"
KEYWORDS=""
SLOT="1"

RDEPEND="
	>=app-eselect/eselect-opengl-1.0.7
	app-eselect/eselect-opencl
	x11-libs/libX11[${MULTILIB_USEDEP}]
	x11-libs/libXext[${MULTILIB_USEDEP}]
	x11-libs/libXinerama[${MULTILIB_USEDEP}]
	x11-libs/libXrandr[${MULTILIB_USEDEP}]
	x11-libs/libXrender[${MULTILIB_USEDEP}]
"

DEPEND="${RDEPEND}
	x11-proto/inputproto
	x11-proto/xf86miscproto
	x11-proto/xf86vidmodeproto
	x11-proto/xineramaproto
"

S="${WORKDIR}"

pkg_nofetch() {
	einfo "Please download"
	einfo "  - ${PN}_${PV}.tar.xz"
	einfo "from ${HOMEPAGE} and place them in ${DISTDIR}"
}

#src_unpack() {
#        unpack ${A}
#}

unpack_deb() {
	echo ">>> Unpacking ${1##*/} to ${PWD}"
	unpack $1
	unpacker ./data.tar*

	# Clean things up #458658.  No one seems to actually care about
	# these, so wait until someone requests to do something else ...
	rm -f debian-binary {control,data}.tar*
}

src_prepare() {
	unpack_deb "./amdgpu-pro-driver/amdgpu-pro-core_${BUILD_VER}_amd64.deb"
	unpack_deb "./amdgpu-pro-driver/amdgpu-pro-graphics_${BUILD_VER}_amd64.deb"
	unpack_deb "./amdgpu-pro-driver/libdrm-amdgpu-pro-tools_${BUILD_VER}_amd64.deb"

	if use opencl ; then
		# Install the clinfo tool.
		unpack_deb "./amdgpu-pro-driver/amdgpu-pro-clinfo_${BUILD_VER}_amd64.deb"

		# Install the actual shared OpenCL lib - this uses the icd files to find the correct lib.
		unpack_deb "./amdgpu-pro-driver/amdgpu-pro-libopencl1_${BUILD_VER}_amd64.deb"
		unpack_deb "./amdgpu-pro-driver/amdgpu-pro-libopencl-dev_${BUILD_VER}_amd64.deb"

		# Install the Installable Client Driver (ICD).
		unpack_deb "./amdgpu-pro-driver/amdgpu-pro-opencl-icd_${BUILD_VER}_amd64.deb"

		if use abi_x86_32 ; then
			# Install the actual shared OpenCL lib - this uses the icd files to find the correct lib.
			unpack_deb "./amdgpu-pro-driver/amdgpu-pro-libopencl1_${BUILD_VER}_i386.deb"
			unpack_deb "./amdgpu-pro-driver/amdgpu-pro-libopencl-dev_${BUILD_VER}_i386.deb"

			# Install the Installable Client Driver (ICD).
			unpack_deb "./amdgpu-pro-driver/amdgpu-pro-opencl-icd_${BUILD_VER}_i386.deb"
		fi
	fi

	if use vulkan ; then
		# Install the actual vulkan ICD.
		unpack_deb "./amdgpu-pro-driver/amdgpu-pro-vulkan-driver_${BUILD_VER}_amd64.deb"

		if use abi_x86_32 ; then
			# Install the actual vulkan ICD.
			unpack_deb "./amdgpu-pro-driver/amdgpu-pro-vulkan-driver_${BUILD_VER}_i386.deb"
		fi

		#chmod -x ./etc/vulkan/icd.d/*
		#rm -rf ./usr/lib
	fi

	if use opengl ; then
		unpack_deb "./amdgpu-pro-driver/libgl1-amdgpu-pro-dev_${BUILD_VER}_amd64.deb"
		unpack_deb "./amdgpu-pro-driver/libgl1-amdgpu-pro-dri_${BUILD_VER}_amd64.deb"
		unpack_deb "./amdgpu-pro-driver/libgl1-amdgpu-pro-glx_${BUILD_VER}_amd64.deb"

		# Install the Generic Buffer Management (BGM) library
		# TODO: This is going to require that the eselect program moves the gbm libs
		unpack_deb "./amdgpu-pro-driver/libgbm1-amdgpu-pro_${BUILD_VER}_amd64.deb"

		if use abi_x86_32 ; then
			unpack_deb "./amdgpu-pro-driver/libgl1-amdgpu-pro-dev_${BUILD_VER}_i386.deb"
			unpack_deb "./amdgpu-pro-driver/libgl1-amdgpu-pro-dri_${BUILD_VER}_i386.deb"
			unpack_deb "./amdgpu-pro-driver/libgl1-amdgpu-pro-glx_${BUILD_VER}_i386.deb"

			# Install the Generic Buffer Management (BGM) library
			# TODO: This is going to require that the eselect program moves the gbm libs
			unpack_deb "./amdgpu-pro-driver/libgbm1-amdgpu-pro_${BUILD_VER}_i386.deb"
		fi
	fi

	if use gles2 ; then
		unpack_deb "./amdgpu-pro-driver/libgles2-amdgpu-pro_${BUILD_VER}_amd64.deb"
		unpack_deb "./amdgpu-pro-driver/libgles2-amdgpu-pro-dev_${BUILD_VER}_amd64.deb"

		if use abi_x86_32 ; then
			unpack_deb "./amdgpu-pro-driver/libgles2-amdgpu-pro_${BUILD_VER}_i386.deb"
			unpack_deb "./amdgpu-pro-driver/libgles2-amdgpu-pro-dev_${BUILD_VER}_i386.deb"
		fi
	fi

	# Install the EGL libs
	unpack_deb "./amdgpu-pro-driver/libegl1-amdgpu-pro_${BUILD_VER}_amd64.deb"
	unpack_deb "./amdgpu-pro-driver/libegl1-amdgpu-pro-dev_${BUILD_VER}_amd64.deb"

	if use abi_x86_32 ; then
		unpack_deb "./amdgpu-pro-driver/libegl1-amdgpu-pro_${BUILD_VER}_i386.deb"
		unpack_deb "./amdgpu-pro-driver/libegl1-amdgpu-pro-dev_${BUILD_VER}_i386.deb"
	fi

	if use vdpau ; then
		unpack_deb "./amdgpu-pro-driver/libvdpau-amdgpu-pro_${BUILD_VER}_amd64.deb"

		# No x86 version of this lib for some reason.
	fi

	# Install the X modules. No x86 version of this lib for some reason.
	unpack_deb "./amdgpu-pro-driver/xserver-xorg-video-amdgpu-pro_16.15.2-277429_amd64.deb"

	# Make our new dir tree

	# Misc
	rm -rf ./lib
	rm -rf ./usr/share/{amdgpu-pro,doc,initramfs-tools,X11}
	mv ./usr/lib ./usr/lib64
	# mkdir -p ./inst/usr/share/man/man4

	# cp ./usr/share/man/amdgpu-pro.4/amdgpu.4.gz ./inst/usr/share/man/man4/amdgpu-pro.4.gz
	mkdir ./usr/share/man/man4
	mv ./usr/share/man/amdgpu-pro.4/amdgpu.4.gz ./usr/share/man/man4/amdgpu-pro.4.gz
	rmdir ./usr/share/man/amdgpu-pro.4
	# cp -R ./etc/amd ./inst/etc
	# cp -R ./etc/gbm ./inst/etc

	# rm -rf ./{etc,lib,usr,amdgpu-pro-driver}
	rm -rf ./amdgpu-pro-driver

	# mkdir -p ./inst/etc
	# mkdir -p ./inst/usr/bin
	# mkdir -p ./inst/usr/$(get_libdir)

	# Copy the OpenCL libs
	# cp -a ./usr/bin/{amdgpu_test,kmstest,modeprint,modetest,proptest,vbltest} ./inst/usr/bin

	if use opencl ; then
	# 	mkdir -p ./inst/etc/OpenCL/vendors
	# 	mkdir -p ./inst/usr/$(get_libdir)/OpenCL/vendors/amdgpu-pro
		mkdir -p ./usr/$(get_libdir)/OpenCL/vendors/amdgpu-pro

	# 	cp -a ./etc/OpenCL/vendors/amdocl64.icd ./inst/etc/OpenCL/vendors
	# 	cp -a ./usr/bin/clinfo ./inst/usr/bin
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/libOpenCL.so* ./inst/usr/$(get_libdir)/OpenCL/vendors/amdgpu-pro/
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/libamdocl* ./inst/usr/$(get_libdir)/OpenCL/vendors/amdgpu-pro/

	# 	pushd ./inst/usr/$(get_libdir)/OpenCL/vendors/amdgpu-pro > /dev/null
	# 		ln -s libOpenCL.so.1 libOpenCL.so
	# 	popd > /dev/null
		pushd ./usr/$(get_libdir)/OpenCL/vendors/amdgpu-pro > /dev/null
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/libOpenCL.so.1 libOpenCL.so
			ln -s libOpenCL.so libOpenCL.so.1
		popd > /dev/null

		if use abi_x86_32 ; then
	# 		mkdir -p ./inst/usr/lib32/OpenCL/vendors/amdgpu-pro
			mkdir -p ./usr/lib32/OpenCL/vendors/amdgpu-pro

	# 		cp -a ./etc/OpenCL/vendors/amdocl32.icd ./inst/etc/OpenCL/vendors
	# 		cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/libOpenCL.so* ./inst/usr/lib32/OpenCL/vendors/amdgpu-pro/
	# 		cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/libamdocl* ./inst/usr/lib32/OpenCL/vendors/amdgpu-pro/

	# 		pushd ./inst/usr/lib32/OpenCL/vendors/amdgpu-pro > /dev/null
	# 			ln -s libOpenCL.so.1 libOpenCL.so
	# 		popd > /dev/null
			pushd ./usr/lib32/OpenCL/vendors/amdgpu-pro > /dev/null
				ln -s ../../../../$(get_libdir)/i386-linux-gnu/amdgpu-pro/libOpenCL.so.1 libOpenCL.so
				ln -s libOpenCL.so libOpenCL.so.1
			popd > /dev/null
		fi
	fi

	# Copy the Vulkan libs
# 	if use vulkan ; then
# 		mkdir -p ./inst/etc/vulkan/icd.d
# 		mkdir -p ./inst/usr/$(get_libdir)/vulkan/vendors/amdgpu-pro

# cat << EOF > ./inst/etc/vulkan/icd.d/amd_icd64.json
# {
#    "file_format_version": "1.0.0",
#        "ICD": {
#            "library_path": "/usr/$(get_libdir)/vulkan/vendors/amdgpu-pro/amdvlk64.so",
#            "abi_versions": "0.9.0"
#        }
# }
# EOF

# 		cp -a ./usr/lib/x86_64-linux-gnu/amdvlk64.so ./inst/usr/$(get_libdir)/vulkan/vendors/amdgpu-pro

# 		if use abi_x86_32 ; then
# 			mkdir -p ./inst/usr/lib32/vulkan/vendors/amdgpu-pro

# cat << EOF > ./inst/etc/vulkan/icd.d/amd_icd32.json
# {
#    "file_format_version": "1.0.0",
#        "ICD": {
#            "library_path": "/usr/lib32/vulkan/vendors/amdgpu-pro/amdvlk32.so",
#            "abi_versions": "0.9.0"
#        }
# }
# EOF

# 			cp -a ./usr/lib/i386-linux-gnu/amdvlk32.so ./inst/usr/lib32/vulkan/vendors/amdgpu-pro/
# 		fi
# 	fi

	# Copy the OpenGL libs
	local XORG_VERS=`Xorg -version 2>&1 | awk '/X.Org X Server/ {print $NF}'|sed 's/.\{2\}$//'`

	# mkdir -p ./inst/usr/$(get_libdir)/opengl/amdgpu-pro
	mkdir -p ./usr/{$(get_libdir),lib32}/opengl/amdgpu-pro/lib

	if use opengl ; then
	# 	mkdir -p ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib
		mkdir -p ./usr/$(get_libdir)/opengl/amdgpu-pro/extensions
		mkdir -p ./usr/$(get_libdir)/opengl/amdgpu-pro/modules/drivers
		mkdir -p ./usr/$(get_libdir)/opengl/amdgpu-pro/modules/drivers
	# 	mkdir -p ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/gbm
		mkdir -p ./usr/$(get_libdir)/dri
	# 	mkdir -p ./inst/usr/$(get_libdir)/dri

	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/libGL.so.1.2 ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/libgbm.so.1.0.0 ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/gbm/gbm_amdgpu.so ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/gbm
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/${XORG_VERS}/modules/extensions/libglx.so ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/extensions
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/${XORG_VERS}/modules/drivers/* ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/modules/drivers
	# 	cp -a ./usr/lib/x86_64-linux-gnu/dri/amdgpu_dri.so ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/dri
		pushd ./usr/$(get_libdir)/dri > /dev/null
			ln -s ../x86_64-linux-gnu/dri/amdgpu_dri.so amdgpu_dri.so
		popd > /dev/null

	# 	pushd ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib > /dev/null
	# 		ln -s libGL.so.1.2 libGL.so.1
	# 		ln -s libGL.so.1.2 libGL.so
	# 		ln -s libgbm.so.1.0.0 libgbm.so.1
	# 		cd ../gbm
	# 		ln -s gbm_amdgpu.so libdummy.so
	# 	popd > /dev/null
		pushd ./usr/$(get_libdir)/opengl/amdgpu-pro/lib > /dev/null
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/libGL.so.1.2 libGL.so.1.2
			ln -s libGL.so.1.2 libGL.so.1
			ln -s libGL.so.1.2 libGL.so
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/libgbm.so.1.0.0 libgbm.so.1.0.0
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/gbm gbm
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/gbm/gbm_amdgpu.so gbm_amdgpu.so
			ln -s libgbm.so.1.0.0 libgbm.so
			cd ../extensions
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/${XORG_VERS}/modules/extensions/libglx.so libglx.so
			cd ../modules/drivers/
			ln -s ../../../../x86_64-linux-gnu/amdgpu-pro/${XORG_VERS}/modules/drivers/amdgpu_drv.so amdgpu_drv.so
		popd > /dev/null

	# 	pushd ./inst/usr/$(get_libdir)/dri > /dev/null
	# 		ln -s ../opengl/amdgpu-pro/dri/amdgpu_dri.so amdgpu_dri.so
	# 	popd > /dev/null

		if use abi_x86_32 ; then
	# 		mkdir -p ./inst/usr/lib32/opengl/amdgpu-pro/lib
	# 		mkdir -p ./inst/usr/lib32/opengl/amdgpu-pro/gbm
	# 		mkdir -p ./inst/usr/lib32/opengl/amdgpu-pro/dri
	# 		mkdir -p ./inst/usr/lib32/dri

	# 		cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/libGL.so.1.2 ./inst/usr/lib32/opengl/amdgpu-pro/lib
	# 		cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/libgbm.so.1.0.0 ./inst/usr/lib32/opengl/amdgpu-pro/lib
	# 		cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/gbm/gbm_amdgpu.so ./inst/usr/lib32/opengl/amdgpu-pro/gbm
	# 		cp -a ./usr/lib/i386-linux-gnu/dri/amdgpu_dri.so ./inst/usr/lib32/opengl/amdgpu-pro/dri

	# 		pushd ./inst/usr/lib32/opengl/amdgpu-pro/lib > /dev/null
	# 			ln -s libGL.so.1.2 libGL.so.1
	# 			ln -s libGL.so.1.2 libGL.so
	# 			ln -s libgbm.so.1.0.0 libgbm.so.1
	# 			cd ../gbm
	# 			ln -s gbm_amdgpu.so libdummy.so
	# 		popd > /dev/null
			pushd ./usr/lib32/opengl/amdgpu-pro/lib > /dev/null
				ln -s ../../../../$(get_libdir)/i386-linux-gnu/amdgpu-pro/libGL.so.1.2 libGL.so.1.2
				ln -s libGL.so.1.2 libGL.so.1
				ln -s libGL.so.1.2 libGL.so
				ln -s ../../../../$(get_libdir)/i386-linux-gnu/amdgpu-pro/libgbm.so.1.0.0 libgbm.so.1.0.0
				ln -s libgbm.so.1.0.0 libgbm.so
			popd > /dev/null

	# 		pushd ./inst/usr/lib32/dri > /dev/null
	# 		      ln -s ../opengl/amdgpu-pro/dri/amdgpu_dri.so amdgpu_dri.so
	# 		popd > /dev/null
		fi
	fi

	# Copy the GLESv2 libs
	if use gles2 ; then
	# 	cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/libGLESv2.so.2 ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib

	# 	pushd ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib > /dev/null
	# 		ln -s libGLESv2.so.2 libGLESv2.so
	# 	popd > /dev/null
		pushd ./usr/$(get_libdir)/opengl/amdgpu-pro/lib > /dev/null
			ln -s ../../../x86_64-linux-gnu/amdgpu-pro/libGLESv2.so.2 libGLESv2.so.2
			ln -s libGLESv2.so.2 libGLESv2.so
		popd > /dev/null

		if use abi_x86_32 ; then
	# 		cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/libGLESv2.so.2 ./inst/usr/lib32/opengl/amdgpu-pro/lib

	# 		pushd ./inst/usr/lib32/opengl/amdgpu-pro/lib > /dev/null
	# 			ln -s libGLESv2.so.2 libGLESv2.so
	# 		popd > /dev/null
			pushd ./usr/lib32/opengl/amdgpu-pro/lib > /dev/null
				ln -s ../../../../$(get_libdir)/i386-linux-gnu/amdgpu-pro/libGLESv2.so.2 libGLESv2.so.2
				ln -s libGLESv2.so.2 libGLESv2.so
			popd > /dev/null
		fi
	fi

	# Copy the EGL libs
	# cp -a ./usr/lib/x86_64-linux-gnu/amdgpu-pro/libEGL.so.1 ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib

	# pushd ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/lib > /dev/null
	# 	ln -s libEGL.so.1 libEGL.so
	# popd > /dev/null
	pushd ./usr/$(get_libdir)/opengl/amdgpu-pro/lib > /dev/null
		ln -s ../../../x86_64-linux-gnu/amdgpu-pro/libEGL.so.1 libEGL.so.1
		ln -s libEGL.so.1 libEGL.so
	popd > /dev/null

	if use abi_x86_32 ; then
	# 	cp -a ./usr/lib/i386-linux-gnu/amdgpu-pro/libEGL.so.1 ./inst/usr/lib32/opengl/amdgpu-pro/lib

	# 	pushd ./inst/usr/lib32/opengl/amdgpu-pro/lib > /dev/null
	# 		ln -s libEGL.so.1 libEGL.so
	# 	popd > /dev/null
		pushd ./usr/lib32/opengl/amdgpu-pro/lib > /dev/null
			ln -s ../../../../$(get_libdir)/i386-linux-gnu/amdgpu-pro/libEGL.so.1 libEGL.so.1
			ln -s libEGL.so.1 libEGL.so
		popd > /dev/null
	fi

	# Copy the VDPAU libs
	if use vdpau ; then
	# 	mkdir -p ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/vdpau
	# 	mkdir -p ./inst/usr/$(get_libdir)/vdpau
		mkdir -p ./usr/$(get_libdir)/vdpau

	# 	cp -a ./usr/lib/x86_64-linux-gnu/vdpau/libvdpau_amdgpu.so.1.0.0 ./inst/usr/$(get_libdir)/opengl/amdgpu-pro/vdpau

		pushd ./usr/$(get_libdir)/vdpau > /dev/null
			  ln -s ../x86_64-linux-gnu/vdpau/libvdpau_amdgpu.so.1.0.0 libvdpau_amdgpu.so.1.0.0
			  ln -s libvdpau_amdgpu.so.1.0.0 libvdpau_amdgpu.so.1.0
			  ln -s libvdpau_amdgpu.so.1.0.0 libvdpau_amdgpu.so.1
			  ln -s libvdpau_amdgpu.so.1.0.0 libvdpau_amdgpu.so
		popd > /dev/null
	fi
}

src_install() {
	# cp -R -t "${D}" ./inst/* || die "Install failed!"
	cp -R -t "${D}" * || die "Install failed!"
}
