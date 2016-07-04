# Gentoo Vulkan overlay

This layer provides an attempt to get the AMD Beta drivers working on Gentoo.

## DISCLAIMER!!!!

This is a massive hack to try to get the beta driver's to work on Gentoo.

See the [issues](https://github.com/Lucretia/vulkan-overlay/issues) before attempting this.

You mess about with this at your own risk. I will not be held responsible for any system problems caused by this.

These scripts currently do **no** error checking and may fail silently.

## To download

Find a place to put the overlay and clone it, but name it *vulkan*, this is the name of the overlay, not *vulkan-overlay*. I
named it this on Github just so it didn't get confused with anything else.

```bash
git clone git@github.com:Lucretia/vulkan-overlay.git vulkan
```

## The source

I started with [farmboy0's](https://github.com/farmboy0/portage-overlay/blob/master/x11-drivers/ati-drivers/ati-drivers-16.15.2.277429.ebuild)
ebuild, but have heavily modified it as he was installing everything and that's not required.

Once you have this overlay somewhere and you've added the following to ```/etc/portage/repos.conf/local.conf``` or similar:

```
[vulkan]
priority = 20
location = /usr/local/overlays/vulkan
masters = gentoo
auto-sync = no
```

### x11-drivers/amdgpu-pro

This is the set of libraries, GL, EGL, GLX, GBM, Vulkan, OpenCL, VDPAU, etc.

* amdgpu-pro-driver-16.20.3 tested on 4.6.0-rc7 and most of the other RC's.
* amdgpu-pro-driver-16.30.3-306809 tested on 4.7.0-rc5, segfaults on trying to start X.
  - This uses the new LRU stuff in the ttm_bo_driver which is not in kernels below 4.7.

### sys-kernel/amdgpu-pro-dkms

This is the kernel module source for the hybrid stack, this has extra ioctl's that are required for the rest of the
stack. Tested on 4.6-rc7. The X log indicates that the kernel module is working.

* Version tests, as above for the drivers.

### media-libs/vulkan-base

This installs a basic SDK, taken from [here](https://bugs.gentoo.org/show_bug.cgi?id=574886), it's the v2 ebuild. It's
a start, but it needs a lot more work. See below.

### app-misc/vulkan-docs

Installs the developer man pages and the API specification (in PDF form).

N.B: I really wasn't sure which category this should go into.

### dev-util/spirv-tools

The SPIR-V assembler, disassembler and validator tools from Khronos.

### dev-util/glslang

glslang -> SPIR-V compiler and spirv-remap tool from Khronos.

### dev-util/shaderc

Google's GLSL -> SPIR-V compiler.

### dev-util/spirv-cross

Tool for converting between SPIR-V <-> high level languages.

## Vulkan

IMPORTANT! To get Vulkan to work, you need to set DRI to 3! i.e. my ```/etc/X11/xorg.conf.d/10-device.conf```:

```bash
Section "Device"
	Identifier  "AMD Radeon R9 390 (Hawaii)"
	Driver      "amdgpu"
	BusID       "PCI:1:0:0"
	Option      "DRI"         "3"
	Option      "AccelMethod" "glamor"
EndSection
```

TODO: Add this into the base config.

## Roadmap

This what I really want to happen:

1. Separate the above from the Vulkan SDK ebuild.
2. Make the ebuild's use the cmake-utils.eclass.
3. Add any further samples.

## Results

The most stable combination I've managed to find so far was 4.6.0-rc7 using amdgpu-pro-dkms-16.20.3.294842.

From the [16.20.3-294842](docs/results_16.20.3-294842.md) drivers.

### Stock kernels

The Stock kernel module (non-pro) with the x11-drivers 16.20.3-294842 alone does not work properly as Vulkan does not
work at all.

Using the stock kernels of 4.6.x have proven to be flaky as the standard AMDGPU driver hangs when playing videos. This
may have been due to Pulse not running, I need to try this again.

I have recompiled the amdgpu-pro-dkms-16.30.3.306809 source and patched again for 4.6.3 and then 4.7-rc5, the former
now works, but the latter still segfaults.

I am currently running 4.6.3-gentoo with the stock kernel module (non-pro) and 16.20.3-294842 x11-drivers, the cube and
triangle Vulkan demos work, the smoketest does not, exiting with:

```bash
terminate called after throwing an instance of 'std::runtime_error'
  what():  failed to find any capable Vulkan physical device
Aborted
```

Dota 2 does run in Vulkan mode.

## Contributions

Luke A. Guest

Add your name here
