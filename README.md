# Gentoo Vulkan overlay

This layer provides an attempt to get the AMD Beta drivers working on Gentoo.

## DISCLAIMER!!!!

This is a massive hack to try to get the beta driver's to work on Gentoo.

See the [issues](https://github.com/Lucretia/vulkan-overlay/issues) before attempting this.

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

### media-libs/vulkan-base

This installs a basic SDK, taken from [here](https://bugs.gentoo.org/show_bug.cgi?id=574886), it's the v2 ebuild. It's
a start, but it needs a lot more work. See below.

## Roadmap

This what I really want to happen:

1) Add a GLSL tools ebuild.
2) Add a SPIR-V tools ebuild.
3) Separate the above from the Vulkan SDK ebuild.
4) Make the ebuild's use the cmake-utils.eclass.
5) Fix the demos from the SDK, probably a layer issue, i.e. cannot find them.
6) Add any further samples.

## Results

```bash
$ uname -a
Linux rogue 4.6.0-rc7 #7 SMP PREEMPT Sat May 14 18:39:38 BST 2016 x86_64 AMD FX(tm)-8350 Eight-Core Processor AuthenticAMD GNU/Linux

# lspci |grep VG
01:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Hawaii PRO [Radeon R9 290] (rev 80)
```

```bash
$ glxinfo |grep -i version
server glx version string: 1.4
client glx version string: 1.4
GLX version: 1.4
OpenGL core profile version string: 4.4.13439 Core Profile Context 16.20.3
OpenGL core profile shading language version string: 4.50
OpenGL version string: 4.5.13439 Compatibility Profile Context 16.20.3
OpenGL shading language version string: 4.50
OpenGL ES profile version string: 4.5.13439 Compatibility Profile Context 16.20.3
OpenGL ES profile shading language version string: 4.50
```

```bash
$ clinfo
Number of platforms:				 1
  Platform Profile:				 FULL_PROFILE
  Platform Version:				 OpenCL 2.0 AMD-APP (2079.3)
  Platform Name:				 AMD Accelerated Parallel Processing
  Platform Vendor:				 Advanced Micro Devices, Inc.
  Platform Extensions:				 cl_khr_icd cl_amd_event_callback cl_amd_offline_devices 


  Platform Name:				 AMD Accelerated Parallel Processing
Number of devices:				 2
  Device Type:					 CL_DEVICE_TYPE_GPU
  Vendor ID:					 1002h
  Board name:					 
  Device Topology:				 PCI[ B#1, D#0, F#0 ]
  Max compute units:				 14
  Max work items dimensions:			 3
    Max work items[0]:				 256
    Max work items[1]:				 256
    Max work items[2]:				 256
  Max work group size:				 256
  Preferred vector width char:			 4
  Preferred vector width short:			 2
  Preferred vector width int:			 1
  Preferred vector width long:			 1
  Preferred vector width float:			 1
  Preferred vector width double:		 1
  Native vector width char:			 4
  Native vector width short:			 2
  Native vector width int:			 1
  Native vector width long:			 1
  Native vector width float:			 1
  Native vector width double:			 1
  Max clock frequency:				 555Mhz
  Address bits:					 64
  Max memory allocation:			 173356032
  Image support:				 Yes
  Max number of images read arguments:		 128
  Max number of images write arguments:		 8
  Max image 2D width:				 16384
  Max image 2D height:				 16384
  Max image 3D width:				 2048
  Max image 3D height:				 2048
  Max image 3D depth:				 2048
  Max samplers within kernel:			 16
  Max size of kernel argument:			 1024
  Alignment (bits) of base address:		 2048
  Minimum alignment (bytes) for any datatype:	 128
  Single precision floating point capability
    Denorms:					 No
    Quiet NaNs:					 Yes
    Round to nearest even:			 Yes
    Round to zero:				 Yes
    Round to +ve and infinity:			 Yes
    IEEE754-2008 fused multiply-add:		 Yes
  Cache type:					 Read/Write
  Cache line size:				 64
  Cache size:					 16384
  Global memory size:				 693424128
  Constant buffer size:				 65536
  Max number of constant args:			 8
  Local memory type:				 Scratchpad
  Local memory size:				 32768
  Max pipe arguments:				 0
  Max pipe active reservations:			 0
  Max pipe packet size:				 0
  Max global variable size:			 0
  Max global variable preferred total size:	 0
  Max read/write image args:			 0
  Max on device events:				 0
  Queue on device max size:			 0
  Max on device queues:				 0
  Queue on device preferred size:		 0
  SVM capabilities:				 
    Coarse grain buffer:			 No
    Fine grain buffer:				 No
    Fine grain system:				 No
    Atomics:					 No
  Preferred platform atomic alignment:		 0
  Preferred global atomic alignment:		 0
  Preferred local atomic alignment:		 0
  Kernel Preferred work group size multiple:	 64
  Error correction support:			 0
  Unified memory for Host and Device:		 0
  Profiling timer resolution:			 1
  Device endianess:				 Little
  Available:					 Yes
  Compiler available:				 Yes
  Execution capabilities:				 
    Execute OpenCL kernels:			 Yes
    Execute native function:			 No
  Queue on Host properties:				 
    Out-of-Order:				 No
    Profiling :					 Yes
  Queue on Device properties:				 
    Out-of-Order:				 No
    Profiling :					 No
  Platform ID:					 0x7f503c921878
  Name:						 Hawaii
  Vendor:					 Advanced Micro Devices, Inc.
  Device OpenCL C version:			 OpenCL C 1.2 
  Driver version:				 2079.3 (VM)
  Profile:					 FULL_PROFILE
  Version:					 OpenCL 1.2 AMD-APP (2079.3)
  Extensions:					 cl_khr_fp64 cl_amd_fp64 cl_khr_global_int32_base_atomics cl_khr_global_int32_extended_atomics cl_khr_local_int32_base_atomics cl_khr_local_int32_extended_atomics cl_khr_int64_base_atomics cl_khr_int64_extended_atomics cl_khr_3d_image_writes cl_khr_byte_addressable_store cl_khr_gl_sharing cl_amd_device_attribute_query cl_amd_vec3 cl_amd_printf cl_amd_media_ops cl_amd_media_ops2 cl_amd_popcnt cl_khr_image2d_from_buffer cl_khr_spir cl_khr_gl_event 


  Device Type:					 CL_DEVICE_TYPE_CPU
  Vendor ID:					 1002h
  Board name:					 
  Max compute units:				 8
  Max work items dimensions:			 3
    Max work items[0]:				 1024
    Max work items[1]:				 1024
    Max work items[2]:				 1024
  Max work group size:				 1024
  Preferred vector width char:			 16
  Preferred vector width short:			 8
  Preferred vector width int:			 4
  Preferred vector width long:			 2
  Preferred vector width float:			 8
  Preferred vector width double:		 4
  Native vector width char:			 16
  Native vector width short:			 8
  Native vector width int:			 4
  Native vector width long:			 2
  Native vector width float:			 8
  Native vector width double:			 4
  Max clock frequency:				 4000Mhz
  Address bits:					 64
  Max memory allocation:			 4174903296
  Image support:				 Yes
  Max number of images read arguments:		 128
  Max number of images write arguments:		 64
  Max image 2D width:				 8192
  Max image 2D height:				 8192
  Max image 3D width:				 2048
  Max image 3D height:				 2048
  Max image 3D depth:				 2048
  Max samplers within kernel:			 16
  Max size of kernel argument:			 4096
  Alignment (bits) of base address:		 1024
  Minimum alignment (bytes) for any datatype:	 128
  Single precision floating point capability
    Denorms:					 Yes
    Quiet NaNs:					 Yes
    Round to nearest even:			 Yes
    Round to zero:				 Yes
    Round to +ve and infinity:			 Yes
    IEEE754-2008 fused multiply-add:		 Yes
  Cache type:					 Read/Write
  Cache line size:				 64
  Cache size:					 16384
  Global memory size:				 16699613184
  Constant buffer size:				 65536
  Max number of constant args:			 8
  Local memory type:				 Global
  Local memory size:				 32768
  Max pipe arguments:				 16
  Max pipe active reservations:			 16
  Max pipe packet size:				 4174903296
  Max global variable size:			 1879048192
  Max global variable preferred total size:	 1879048192
  Max read/write image args:			 64
  Max on device events:				 0
  Queue on device max size:			 0
  Max on device queues:				 0
  Queue on device preferred size:		 0
  SVM capabilities:				 
    Coarse grain buffer:			 No
    Fine grain buffer:				 No
    Fine grain system:				 No
    Atomics:					 No
  Preferred platform atomic alignment:		 0
  Preferred global atomic alignment:		 0
  Preferred local atomic alignment:		 0
  Kernel Preferred work group size multiple:	 1
  Error correction support:			 0
  Unified memory for Host and Device:		 1
  Profiling timer resolution:			 1
  Device endianess:				 Little
  Available:					 Yes
  Compiler available:				 Yes
  Execution capabilities:				 
    Execute OpenCL kernels:			 Yes
    Execute native function:			 Yes
  Queue on Host properties:				 
    Out-of-Order:				 No
    Profiling :					 Yes
  Queue on Device properties:				 
    Out-of-Order:				 No
    Profiling :					 No
  Platform ID:					 0x7f503c921878
  Name:						 AMD FX(tm)-8350 Eight-Core Processor
  Vendor:					 AuthenticAMD
  Device OpenCL C version:			 OpenCL C 1.2 
  Driver version:				 2079.3 (sse2,avx,fma4)
  Profile:					 FULL_PROFILE
  Version:					 OpenCL 1.2 AMD-APP (2079.3)
  Extensions:					 cl_khr_fp64 cl_amd_fp64 cl_khr_global_int32_base_atomics cl_khr_global_int32_extended_atomics cl_khr_local_int32_base_atomics cl_khr_local_int32_extended_atomics cl_khr_int64_base_atomics cl_khr_int64_extended_atomics cl_khr_3d_image_writes cl_khr_byte_addressable_store cl_khr_gl_sharing cl_ext_device_fission cl_amd_device_attribute_query cl_amd_vec3 cl_amd_printf cl_amd_media_ops cl_amd_media_ops2 cl_amd_popcnt cl_khr_spir cl_khr_gl_event 
```

```bash
===========
VULKAN INFO
===========

Vulkan API Version: 1.0.13

INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_unique_objects.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_core_validation.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_swapchain.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_threading.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_object_tracker.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_device_limits.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_image.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /usr/share/vulkan/explicit_layer.d/VkLayer_parameter_validation.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /home/laguest/.local/share/vulkan/implicit_layer.d/steamoverlay_i386.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /home/laguest/.local/share/vulkan/implicit_layer.d/steamoverlay_x86_64.json, version "1.0.0"
INFO: [loader] Code 0 : Found manifest file /etc/vulkan/icd.d/amd_icd32.json, version "1.0.0"
WARNING: [loader] Code 0 : /usr/lib32/vulkan/vendors/amdgpu-pro/amdvlk32.so: wrong ELF class: ELFCLASS32
INFO: [loader] Code 0 : Found manifest file /etc/vulkan/icd.d/amd_icd64.json, version "1.0.0"
Instance Extensions and layers:
===============================
Instance Extensions	count = 3
	VK_KHR_surface                  : extension revision 25
	VK_KHR_xcb_surface              : extension revision  6
	VK_EXT_debug_report             : extension revision  2

Instance Layers	count = 11
	VK_LAYER_GOOGLE_unique_objects (Google Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_GOOGLE_unique_objects Extensions	count = 0

	VK_LAYER_LUNARG_core_validation (LunarG Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_core_validation Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_LUNARG_swapchain (LunarG Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_swapchain Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_GOOGLE_threading (Google Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_GOOGLE_threading Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_LUNARG_object_tracker (LunarG Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_object_tracker Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_LUNARG_device_limits (LunarG Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_device_limits Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_LUNARG_image (LunarG Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_image Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_LUNARG_parameter_validation (LunarG Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_parameter_validation Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

	VK_LAYER_VALVE_steam_overlay_32 (Steam Overlay Layer) Vulkan version 1.0.3, layer version 1
	VK_LAYER_VALVE_steam_overlay_32 Extensions	count = 0

	VK_LAYER_VALVE_steam_overlay_64 (Steam Overlay Layer) Vulkan version 1.0.3, layer version 1
	VK_LAYER_VALVE_steam_overlay_64 Extensions	count = 0

	VK_LAYER_LUNARG_standard_validation (LunarG Standard Validation Layer) Vulkan version 1.0.13, layer version 1
	VK_LAYER_LUNARG_standard_validation Extensions	count = 1
		VK_EXT_debug_report             : extension revision  2

Device Extensions and layers:
=============================
GPU0
VkPhysicalDeviceProperties:
===========================
	apiVersion     = 0x40000b  (1.0.11)
	driverVersion  = 36864 (0x9000)
	vendorID       = 0x1002
	deviceID       = 0x67b1
	deviceType     = DISCRETE_GPU
	deviceName     = AMD Radeon (TM) R9 390 Series
	VkPhysicalDeviceLimits:
	-----------------------
		maxImageDimension1D                     = 16384
		maxImageDimension2D                     = 16384
		maxImageDimension3D                     = 8192
		maxImageDimensionCube                   = 16384
		maxImageArrayLayers                     = 2048
		maxTexelBufferElements                  = 0xffffffff
		maxUniformBufferRange                   = 0xffffffff
		maxStorageBufferRange                   = 0xffffffff
		maxPushConstantsSize                    = 128
		maxMemoryAllocationCount                = 4096
		maxSamplerAllocationCount               = 1048576
		bufferImageGranularity                  = 0x1
		sparseAddressSpaceSize                  = 0xeffffffff
		maxBoundDescriptorSets                  = 32
		maxPerStageDescriptorSamplers           = 4294967295
		maxPerStageDescriptorUniformBuffers     = 4294967295
		maxPerStageDescriptorStorageBuffers     = 4294967295
		maxPerStageDescriptorSampledImages      = 4294967295
		maxPerStageDescriptorStorageImages      = 4294967295
		maxPerStageDescriptorInputAttachments   = 4294967295
		maxPerStageResources                    = 4294967295
		maxDescriptorSetSamplers                = 4294967295
		maxDescriptorSetUniformBuffers          = 4294967295
		maxDescriptorSetUniformBuffersDynamic   = 8
		maxDescriptorSetStorageBuffers          = 4294967295
		maxDescriptorSetStorageBuffersDynamic   = 8
		maxDescriptorSetSampledImages           = 4294967295
		maxDescriptorSetStorageImages           = 4294967295
		maxDescriptorSetInputAttachments        = 4294967295
		maxVertexInputAttributes                = 4294967295
		maxVertexInputBindings                  = 32
		maxVertexInputAttributeOffset           = 0xffffffff
		maxVertexInputBindingStride             = 0x3fff
		maxVertexOutputComponents               = 128
		maxTessellationGenerationLevel          = 64
		maxTessellationPatchSize                        = 32
		maxTessellationControlPerVertexInputComponents  = 128
		maxTessellationControlPerVertexOutputComponents = 128
		maxTessellationControlPerPatchOutputComponents  = 120
		maxTessellationControlTotalOutputComponents     = 4096
		maxTessellationEvaluationInputComponents        = 128
		maxTessellationEvaluationOutputComponents       = 128
		maxGeometryShaderInvocations            = 127
		maxGeometryInputComponents              = 128
		maxGeometryOutputComponents             = 128
		maxGeometryOutputVertices               = 1024
		maxGeometryTotalOutputComponents        = 16384
		maxFragmentInputComponents              = 128
		maxFragmentOutputAttachments            = 8
		maxFragmentDualSrcAttachments           = 1
		maxFragmentCombinedOutputResources      = 4294967295
		maxComputeSharedMemorySize              = 0x8000
		maxComputeWorkGroupCount[0]             = 65535
		maxComputeWorkGroupCount[1]             = 65535
		maxComputeWorkGroupCount[2]             = 65535
		maxComputeWorkGroupInvocations          = 1024
		maxComputeWorkGroupSize[0]              = 1024
		maxComputeWorkGroupSize[1]              = 1024
		maxComputeWorkGroupSize[2]              = 1024
		subPixelPrecisionBits                   = 8
		subTexelPrecisionBits                   = 8
		mipmapPrecisionBits                     = 8
		maxDrawIndexedIndexValue                = 4294967295
		maxDrawIndirectCount                    = 4294967295
		maxSamplerLodBias                       = 15.996094
		maxSamplerAnisotropy                    = 16.000000
		maxViewports                            = 16
		maxViewportDimensions[0]                = 16384
		maxViewportDimensions[1]                = 16384
		viewportBoundsRange[0]                  = -32768.000000
		viewportBoundsRange[1]                  = 32767.000000
		viewportSubPixelBits                    = 8
		minMemoryMapAlignment                   = 64
		minTexelBufferOffsetAlignment           = 0x1
		minUniformBufferOffsetAlignment         = 0x10
		minStorageBufferOffsetAlignment         = 0x4
		minTexelOffset                          = 0xffffffc0
		maxTexelOffset                          = 0x3f
		minTexelGatherOffset                    = 0xffffffe0
		maxTexelGatherOffset                    = 0x1f
		minInterpolationOffset                  = -2.000000
		maxInterpolationOffset                  = 2.000000
		subPixelInterpolationOffsetBits         = 8
		maxFramebufferWidth                     = 16384
		maxFramebufferHeight                    = 16384
		maxFramebufferLayers                    = 2048
		framebufferColorSampleCounts            = 15
		framebufferDepthSampleCounts            = 15
		framebufferStencilSampleCounts          = 15
		framebufferNoAttachmentsSampleCounts    = 15
		maxColorAttachments                     = 8
		sampledImageColorSampleCounts           = 15
		sampledImageDepthSampleCounts           = 15
		sampledImageStencilSampleCounts         = 15
		sampledImageIntegerSampleCounts         = 15
		storageImageSampleCounts                = 15
		maxSampleMaskWords                      = 1
		timestampComputeAndGraphics             = 1
		timestampPeriod                         = 37.037037
		maxClipDistances                        = 8
		maxCullDistances                        = 8
		maxCombinedClipAndCullDistances         = 8
		discreteQueuePriorities                 = 2
		pointSizeRange[0]                       = 0.000000
		pointSizeRange[1]                       = 8191.875000
		lineWidthRange[0]                       = 0.000000
		lineWidthRange[1]                       = 8191.875000
		pointSizeGranularity                    = 0.125000
		lineWidthGranularity                    = 0.125000
		strictLines                             = 1
		standardSampleLocations                 = 1
		optimalBufferCopyOffsetAlignment        = 0x1
		optimalBufferCopyRowPitchAlignment      = 0x1
		nonCoherentAtomSize                     = 0x80
	VkPhysicalDeviceSparseProperties:
	---------------------------------
		residencyStandard2DBlockShape            = 1
		residencyStandard2DMultisampleBlockShape = 0
		residencyStandard3DBlockShape            = 0
		residencyAlignedMipSize                  = 0
		residencyNonResidentStrict               = 1

Device Extensions	count = 3
	VK_KHR_sampler_mirror_clamp_to_edge: extension revision  1
	VK_KHR_swapchain                : extension revision 68
	VK_AMD_rasterization_order      : extension revision  1


Layers	count = 0

VkQueueFamilyProperties[0]:
============================
	queueFlags         = GCD
	queueCount         = 1
	timestampValidBits = 64
	minImageTransferGranularity = (1, 1, 1)

VkQueueFamilyProperties[1]:
============================
	queueFlags         = .CD
	queueCount         = 8
	timestampValidBits = 64
	minImageTransferGranularity = (1, 1, 1)

VkQueueFamilyProperties[2]:
============================
	queueFlags         = ..D
	queueCount         = 2
	timestampValidBits = 64
	minImageTransferGranularity = (8, 8, 8)

VkPhysicalDeviceMemoryProperties:
=================================
	memoryTypeCount       = 4
	memoryTypes[0] : 
		heapIndex     = 0
		propertyFlags = 0x1:
			VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
	memoryTypes[1] : 
		heapIndex     = 1
		propertyFlags = 0x7:
			VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT
			VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
			VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
	memoryTypes[2] : 
		heapIndex     = 2
		propertyFlags = 0x6:
			VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
			VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
	memoryTypes[3] : 
		heapIndex     = 2
		propertyFlags = 0xe:
			VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT
			VK_MEMORY_PROPERTY_HOST_COHERENT_BIT
			VK_MEMORY_PROPERTY_HOST_CACHED_BIT

	memoryHeapCount       = 3
	memoryHeaps[0] : 
		size          = 8358793216 (0x1f2391000)
		flags: 
			VK_MEMORY_HEAP_DEVICE_LOCAL_BIT
	memoryHeaps[1] : 
		size          = 231141376 (0xdc6f000)
		flags: 
			VK_MEMORY_HEAP_DEVICE_LOCAL_BIT
	memoryHeaps[2] : 
		size          = 8578793472 (0x1ff560000)
		flags: 
			None

VkPhysicalDeviceFeatures:
=========================
	robustBufferAccess                      = 1
	fullDrawIndexUint32                     = 1
	imageCubeArray                          = 1
	independentBlend                        = 1
	geometryShader                          = 1
	tessellationShader                      = 1
	sampleRateShading                       = 1
	dualSrcBlend                            = 1
	logicOp                                 = 1
	multiDrawIndirect                       = 1
	drawIndirectFirstInstance               = 1
	depthClamp                              = 1
	depthBiasClamp                          = 1
	fillModeNonSolid                        = 1
	depthBounds                             = 1
	wideLines                               = 1
	largePoints                             = 1
	textureCompressionETC2                  = 0
	textureCompressionASTC_LDR              = 0
	textureCompressionBC                    = 1
	occlusionQueryPrecise                   = 1
	pipelineStatisticsQuery                 = 1
	vertexSideEffects                       = 1
	tessellationSideEffects                 = 1
	geometrySideEffects                     = 1
	shaderImageGatherExtended               = 1
	shaderStorageImageExtendedFormats       = 1
	shaderStorageImageMultisample           = 1
	shaderStorageImageReadWithoutFormat     = 1
	shaderStorageImageWriteWithoutFormat    = 1
	shaderUniformBufferArrayDynamicIndexing = 1
	shaderSampledImageArrayDynamicIndexing  = 1
	shaderStorageBufferArrayDynamicIndexing = 1
	shaderStorageImageArrayDynamicIndexing  = 1
	shaderClipDistance                      = 1
	shaderCullDistance                      = 1
	shaderFloat64                           = 1
	shaderInt64                             = 1
	shaderInt16                             = 0
	shaderResourceResidency                 = 0
	shaderResourceMinLod                    = 0
	alphaToOne                              = 0
	sparseBinding                           = 0
	sparseResidencyBuffer                   = 0
	sparseResidencyImage2D                  = 0
	sparseResidencyImage3D                  = 0
	sparseResidency2Samples                 = 0
	sparseResidency4Samples                 = 0
	sparseResidency8Samples                 = 0
	sparseResidency16Samples                = 0
	sparseResidencyAliased                  = 0
	variableMultisampleRate                 = 1
	iheritedQueries                         = 1


FORMAT_UNDEFINED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R4G4_UNORM_PACK8:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R4G4B4A4_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B4G4R4A4_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R5G6B5_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B5G6R5_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R5G5B5A1_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B5G5R5A1_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A1R5G5B5_UNORM_PACK16:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8_SRGB:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8_SRGB:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_UNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_SNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8_SRGB:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_UNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_SNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8_SRGB:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8A8_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8B8A8_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8B8A8_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8A8_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R8G8B8A8_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8B8A8_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R8G8B8A8_SRGB:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_B8G8R8A8_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_B8G8R8A8_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_B8G8R8A8_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8A8_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_B8G8R8A8_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_B8G8R8A8_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_B8G8R8A8_SRGB:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A8B8G8R8_UNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A8B8G8R8_SNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A8B8G8R8_USCALED_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A8B8G8R8_SSCALED_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A8B8G8R8_UINT_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A8B8G8R8_SINT_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A8B8G8R8_SRGB_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2R10G10B10_UNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2R10G10B10_SNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2R10G10B10_USCALED_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A2R10G10B10_SSCALED_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A2R10G10B10_UINT_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2R10G10B10_SINT_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2B10G10R10_UNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2B10G10R10_SNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2B10G10R10_USCALED_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A2B10G10R10_SSCALED_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_A2B10G10R10_UINT_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_A2B10G10R10_SINT_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16B16_UNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16_SNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16_SFLOAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16A16_UNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16B16A16_SNORM:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16B16A16_USCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16A16_SSCALED:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_R16G16B16A16_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16B16A16_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R16G16B16A16_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32B32_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32B32_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32B32_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32B32A32_UINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32B32A32_SINT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R32G32B32A32_SFLOAT:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64_SFLOAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64_SFLOAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64B64_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64B64_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64B64_SFLOAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64B64A64_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64B64A64_SINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_R64G64B64A64_SFLOAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_B10G11R11_UFLOAT_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_BLIT_DST_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT
		VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
		VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT

FORMAT_E5B9G9R9_UFLOAT_PACK32:
	linearTiling   FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_D16_UNORM:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_X8_D24_UNORM_PACK32:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_D32_SFLOAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_S8_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_D16_UNORM_S8_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_D24_UNORM_S8_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_D32_SFLOAT_S8_UINT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC1_RGB_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC1_RGB_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_UNKNOWN_FORMAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_UNKNOWN_FORMAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC2_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC2_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC3_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC3_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC4_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC4_SNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC5_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC5_SNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC6H_UFLOAT_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC6H_SFLOAT_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC7_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_BC7_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT
		VK_FORMAT_FEATURE_BLIT_SRC_BIT
		VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ETC2_R8G8B8_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_UNKNOWN_FORMAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ETC2_R8G8B8A1_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_UNKNOWN_FORMAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ETC2_R8G8B8A8_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_UNKNOWN_FORMAT:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_EAC_R11_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_EAC_R11_SNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_EAC_R11G11_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_EAC_R11G11_SNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_4x4_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_4x4_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_5x4_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_5x4_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_5x5_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_5x5_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_6x5_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_6x5_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_6x6_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_6x6_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_8x5_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_8x5_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_8x6_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_8x6_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_8x8_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_8x8_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x5_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x5_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x6_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x6_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x8_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x8_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x10_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_10x10_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_12x10_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_12x10_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_12x12_UNORM_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None

FORMAT_ASTC_12x12_SRGB_BLOCK:
	linearTiling   FormatFeatureFlags:
		None
	optimalTiling  FormatFeatureFlags:
		None
	bufferFeatures FormatFeatureFlags:
		None


```

## Contributions

Luke A. Guest

Add your name here
