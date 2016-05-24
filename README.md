# Gentoo Vulkan overlay

This layer provides an attempt to get the AMD Beta drivers working on Gentoo.

## DISCLAIMER!!!!

This is a massive hack to try to get the beta driver's to work on Gentoo.

You mess about with this at your own risk. I will not be held responsible for any system problems caused by this.

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

### sys-kernel/amdgpu-pro-dkms

This is the kernel module source for the hybrid stack, this has extra ioctl's that are required for the rest of the
stack. Tested on 4.6-rc7. The X log indicates that the kernel module is working.

## Roadmap

This what I really want to happen:

1) Get the driver's working on Gentoo.
2) Add the Vulkan SDK.
3) Add any samples.

## Contributions

Luke A. Guest

Add your name here
