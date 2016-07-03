# Basic machine information

```bash
$ uname -a
Linux rogue 4.6.0-rc7 #7 SMP PREEMPT Sat May 14 18:39:38 BST 2016 x86_64 AMD FX(tm)-8350 Eight-Core Processor AuthenticAMD GNU/Linux

# lspci |grep VG
01:00.0 VGA compatible controller: Advanced Micro Devices, Inc. [AMD/ATI] Hawaii PRO [Radeon R9 290] (rev 80)
```

# OpenGL information

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

# OpenCL information

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

# Vulkan information

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

# Finally, my /var/log/Xorg.0.log:

```bash
[    30.567]
X.Org X Server 1.17.4
Release Date: 2015-10-28
[    30.568] X Protocol Version 11, Revision 0
[    30.568] Build Operating System: Linux 4.5.0-gentoo x86_64 Gentoo
[    30.568] Current Operating System: Linux rogue 4.6.0-rc7 #7 SMP PREEMPT Sat May 14 18:39:38 BST 2016 x86_64
[    30.568] Kernel command line: BOOT_IMAGE=/boot/kernel-genkernel-x86_64-4.6.0-rc7 root=/dev/mapper/gentoo-filesystem ro dolvm rootfstype=ext4 amd_iommu=on iommu=pt vfio_pci.ids=1002:aad8,1002:6939,8086:10d3 crashkernel=@128M
[    30.568] Build Date: 20 March 2016  01:04:57PM
[    30.568]
[    30.568] Current version of pixman: 0.32.8
[    30.568] 	Before reporting problems, check http://wiki.x.org
	to make sure that you have the latest version.
[    30.568] Markers: (--) probed, (**) from config file, (==) default setting,
	(++) from command line, (!!) notice, (II) informational,
	(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[    30.568] (==) Log file: "/var/log/Xorg.0.log", Time: Wed May 25 22:54:30 2016
[    30.656] (==) Using config directory: "/etc/X11/xorg.conf.d"
[    30.656] (==) Using system config directory "/usr/share/X11/xorg.conf.d"
[    31.066] (==) No Layout section.  Using the first Screen section.
[    31.066] (**) |-->Screen "Dell U2311H" (0)
[    31.066] (**) |   |-->Monitor "<default monitor>"
[    31.066] (==) No device specified for screen "Dell U2311H".
	Using the first device section listed.
[    31.066] (**) |   |-->Device "AMD Radeon R9 390 (Hawaii)"
[    31.066] (==) No monitor specified for screen "Dell U2311H".
	Using a default monitor configuration.
[    31.066] (==) Automatically adding devices
[    31.066] (==) Automatically enabling devices
[    31.066] (==) Automatically adding GPU devices
[    31.094] (WW) The directory "/usr/share/fonts/TTF/" does not exist.
[    31.094] 	Entry deleted from font path.
[    31.094] (WW) The directory "/usr/share/fonts/OTF/" does not exist.
[    31.094] 	Entry deleted from font path.
[    31.094] (WW) The directory "/usr/share/fonts/Type1/" does not exist.
[    31.094] 	Entry deleted from font path.
[    31.116] (WW) `fonts.dir' not found (or not valid) in "/usr/share/fonts/75dpi/".
[    31.116] 	Entry deleted from font path.
[    31.116] 	(Run 'mkfontdir' on "/usr/share/fonts/75dpi/").
[    31.116] (==) FontPath set to:
	/usr/share/fonts/misc/,
	/usr/share/fonts/100dpi/
[    31.116] (**) ModulePath set to "/usr/lib32/xorg/modules,/usr/lib64/opengl/amdgpu-pro,/usr/lib64/xorg/modules"
[    31.116] (II) The server relies on udev to provide the list of input devices.
	If no devices become available, reconfigure udev or disable AutoAddDevices.
[    31.116] (II) Loader magic: 0x808c80
[    31.116] (II) Module ABI versions:
[    31.116] 	X.Org ANSI C Emulation: 0.4
[    31.116] 	X.Org Video Driver: 19.0
[    31.116] 	X.Org XInput driver : 21.0
[    31.116] 	X.Org Server Extension : 9.0
[    31.117] (II) xfree86: Adding drm device (/dev/dri/card0)
[    31.123] (--) PCI:*(0:1:0:0) 1002:67b1:174b:e324 rev 128, Mem @ 0xa0000000/268435456, 0xb0000000/8388608, 0xfea00000/262144, I/O @ 0x0000e000/256, BIOS @ 0x????????/131072
[    31.123] (--) PCI: (0:3:0:0) 1002:6939:174b:e308 rev 241, Mem @ 0xc0000000/268435456, 0xd0000000/2097152, 0xfe800000/262144, I/O @ 0x0000c000/256, BIOS @ 0x????????/131072
[    31.123] (II) LoadModule: "glx"
[    31.177] (II) Loading /usr/lib64/opengl/amdgpu-pro/extensions/libglx.so
[    31.196] (II) Module glx: vendor="X.Org Foundation"
[    31.196] 	compiled for 1.17.0, module version = 1.0.0
[    31.196] 	ABI class: X.Org Server Extension, version 9.0
[    31.196] (==) AIGLX enabled
[    31.196] (II) LoadModule: "amdgpu"
[    31.233] (II) Loading /usr/lib64/opengl/amdgpu-pro/modules/drivers/amdgpu_drv.so
[    31.571] (II) Module amdgpu: vendor="X.Org Foundation"
[    31.571] 	compiled for 1.17.0, module version = 1.0.1
[    31.571] 	Module class: X.Org Video Driver
[    31.572] 	ABI class: X.Org Video Driver, version 19.0
[    31.572] (II) AMDGPU: Driver for AMD Radeon chipsets: BONAIRE, BONAIRE, BONAIRE,
	BONAIRE, BONAIRE, BONAIRE, BONAIRE, BONAIRE, BONAIRE, BONAIRE,
	KABINI, KABINI, KABINI, KABINI, KABINI, KABINI, KABINI, KABINI,
	KABINI, KABINI, KABINI, KABINI, KABINI, KABINI, KABINI, KABINI,
	KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, KAVERI,
	KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, KAVERI,
	KAVERI, KAVERI, KAVERI, KAVERI, KAVERI, HAWAII, HAWAII, HAWAII,
	HAWAII, HAWAII, HAWAII, HAWAII, HAWAII, HAWAII, HAWAII, HAWAII,
	HAWAII, TOPAZ, TOPAZ, TOPAZ, TOPAZ, TOPAZ, TONGA, TONGA, TONGA,
	TONGA, TONGA, TONGA, TONGA, TONGA, TONGA, CARRIZO, CARRIZO, CARRIZO,
	CARRIZO, CARRIZO, FIJI, STONEY, POLARIS11, POLARIS11, POLARIS11,
	POLARIS11, POLARIS11, POLARIS11, POLARIS11, POLARIS11, POLARIS11,
	POLARIS10, POLARIS10, POLARIS10, POLARIS10, POLARIS10, POLARIS10,
	POLARIS10, POLARIS10, POLARIS10, POLARIS10, POLARIS10
[    31.572] (++) using VT number 7

[    31.577] (II) [KMS] Kernel modesetting enabled.
[    31.578] (II) AMDGPU(0): AMDGPU DDX hybrid version: 16.20.3
[    31.578] (II) AMDGPU(0): AMDGPU kernel module hybrid version: 16.20.3
[    31.578] (**) AMDGPU(0): Depth 24, (--) framebuffer bpp 32
[    31.578] (II) AMDGPU(0): Pixel depth = 24 bits stored in 4 bytes (32 bpp pixmaps)
[    31.578] (==) AMDGPU(0): Default visual is TrueColor
[    31.578] (**) AMDGPU(0): Option "AccelMethod" "glamor"
[    31.578] (**) AMDGPU(0): Option "DRI" "3"
[    31.578] (==) AMDGPU(0): RGB weight 888
[    31.578] (II) AMDGPU(0): Using 8 bits per RGB (8 bit DAC)
[    31.578] (--) AMDGPU(0): Chipset: "HAWAII" (ChipID = 0x67b1)
[    31.578] (II) Loading sub module "fb"
[    31.578] (II) LoadModule: "fb"
[    31.609] (II) Loading /usr/lib64/xorg/modules/libfb.so
[    31.648] (II) Module fb: vendor="X.Org Foundation"
[    31.648] 	compiled for 1.17.4, module version = 1.0.0
[    31.648] 	ABI class: X.Org ANSI C Emulation, version 0.4
[    31.648] (II) Loading sub module "dri2"
[    31.648] (II) LoadModule: "dri2"
[    31.648] (II) Module "dri2" already built-in
[    32.224] (II) glamor: OpenGL accelerated X.org driver based.
[    37.949] (II) glamor: EGL version 1.4:
[    38.220] (II) AMDGPU(0): glamor detected, initialising EGL layer.
[    38.220] (II) AMDGPU(0): KMS Pageflipping: enabled
[    38.220] (II) AMDGPU(0): Output DisplayPort-0 has no monitor section
[    38.220] (II) AMDGPU(0): Output DisplayPort-1 has no monitor section
[    38.220] (II) AMDGPU(0): Output DisplayPort-2 has no monitor section
[    38.220] (II) AMDGPU(0): Output HDMI-A-0 has no monitor section
[    38.220] (II) AMDGPU(0): Output DVI-D-0 has no monitor section
[    38.220] (II) AMDGPU(0): EDID for output DisplayPort-0
[    38.220] (II) AMDGPU(0): Manufacturer: DEL  Model: a060  Serial#: 842282828
[    38.220] (II) AMDGPU(0): Year: 2011  Week: 22
[    38.220] (II) AMDGPU(0): EDID Version: 1.4
[    38.220] (II) AMDGPU(0): Digital Display Input
[    38.220] (II) AMDGPU(0): 8 bits per channel
[    38.220] (II) AMDGPU(0): Digital interface is DisplayPort
[    38.220] (II) AMDGPU(0): Max Image Size [cm]: horiz.: 51  vert.: 29
[    38.220] (II) AMDGPU(0): Gamma: 2.20
[    38.220] (II) AMDGPU(0): DPMS capabilities: Off
[    38.220] (II) AMDGPU(0): Supported color encodings: RGB 4:4:4 YCrCb 4:4:4 YCrCb 4:2:2
[    38.220] (II) AMDGPU(0): Default color space is primary color space
[    38.220] (II) AMDGPU(0): First detailed timing is preferred mode
[    38.220] (II) AMDGPU(0): Preferred mode is native pixel format and refresh rate
[    38.220] (II) AMDGPU(0): redX: 0.640 redY: 0.330   greenX: 0.300 greenY: 0.600
[    38.220] (II) AMDGPU(0): blueX: 0.150 blueY: 0.060   whiteX: 0.313 whiteY: 0.329
[    38.220] (II) AMDGPU(0): Supported established timings:
[    38.220] (II) AMDGPU(0): 720x400@70Hz
[    38.220] (II) AMDGPU(0): 640x480@60Hz
[    38.220] (II) AMDGPU(0): 640x480@75Hz
[    38.220] (II) AMDGPU(0): 800x600@60Hz
[    38.220] (II) AMDGPU(0): 800x600@75Hz
[    38.220] (II) AMDGPU(0): 1024x768@60Hz
[    38.220] (II) AMDGPU(0): 1024x768@75Hz
[    38.220] (II) AMDGPU(0): 1280x1024@75Hz
[    38.220] (II) AMDGPU(0): Manufacturer's mask: 0
[    38.220] (II) AMDGPU(0): Supported standard timings:
[    38.220] (II) AMDGPU(0): #0: hsize: 1152  vsize 864  refresh: 75  vid: 20337
[    38.220] (II) AMDGPU(0): #1: hsize: 1280  vsize 1024  refresh: 60  vid: 32897
[    38.220] (II) AMDGPU(0): #2: hsize: 1920  vsize 1080  refresh: 60  vid: 49361
[    38.220] (II) AMDGPU(0): Supported detailed timing:
[    38.220] (II) AMDGPU(0): clock: 148.5 MHz   Image Size:  509 x 286 mm
[    38.220] (II) AMDGPU(0): h_active: 1920  h_sync: 2008  h_sync_end 2052 h_blank_end 2200 h_border: 0
[    38.221] (II) AMDGPU(0): v_active: 1080  v_sync: 1084  v_sync_end 1089 v_blanking: 1125 v_border: 0
[    38.221] (II) AMDGPU(0): Serial No: HV8XP15R247L
[    38.221] (II) AMDGPU(0): Monitor name: DELL U2311H
[    38.221] (II) AMDGPU(0): Ranges: V min: 56 V max: 76 Hz, H min: 30 H max: 83 kHz, PixClock max 175 MHz
[    38.221] (II) AMDGPU(0): EDID (in hex):
[    38.221] (II) AMDGPU(0): 	00ffffffffffff0010ac60a04c373432
[    38.221] (II) AMDGPU(0): 	16150104a5331d783eee95a3544c9926
[    38.221] (II) AMDGPU(0): 	0f5054a54b00714f8180d1c001010101
[    38.221] (II) AMDGPU(0): 	010101010101023a801871382d40582c
[    38.221] (II) AMDGPU(0): 	4500fd1e1100001e000000ff00485638
[    38.221] (II) AMDGPU(0): 	58503135523234374c0a000000fc0044
[    38.221] (II) AMDGPU(0): 	454c4c205532333131480a20000000fd
[    38.221] (II) AMDGPU(0): 	00384c1e5311000a2020202020200045
[    38.221] (II) AMDGPU(0): Printing probed modes for output DisplayPort-0
[    38.221] (II) AMDGPU(0): Modeline "1920x1080"x60.0  148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync (67.5 kHz eP)
[    38.221] (II) AMDGPU(0): Modeline "1680x1050"x60.0  148.50  1680 2008 2052 2200  1050 1084 1089 1125 +hsync +vsync (67.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1280x1024"x75.0  135.00  1280 1296 1440 1688  1024 1025 1028 1066 +hsync +vsync (80.0 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1280x1024"x60.0  108.00  1280 1328 1440 1688  1024 1025 1028 1066 +hsync +vsync (64.0 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1440x900"x60.0  148.50  1440 2008 2052 2200  900 1084 1089 1125 +hsync +vsync (67.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1280x800"x60.0  148.50  1280 2008 2052 2200  800 1084 1089 1125 +hsync +vsync (67.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1152x864"x75.0  108.00  1152 1216 1344 1600  864 865 868 900 +hsync +vsync (67.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1280x720"x60.0  148.50  1280 2008 2052 2200  720 1084 1089 1125 +hsync +vsync (67.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1024x768"x75.0   78.75  1024 1040 1136 1312  768 769 772 800 +hsync +vsync (60.0 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "1024x768"x60.0   65.00  1024 1048 1184 1344  768 771 777 806 -hsync -vsync (48.4 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "800x600"x75.0   49.50  800 816 896 1056  600 601 604 625 +hsync +vsync (46.9 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "800x600"x60.3   40.00  800 840 968 1056  600 601 605 628 +hsync +vsync (37.9 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "640x480"x75.0   31.50  640 656 720 840  480 481 484 500 -hsync -vsync (37.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "640x480"x59.9   25.18  640 656 752 800  480 490 492 525 -hsync -vsync (31.5 kHz e)
[    38.221] (II) AMDGPU(0): Modeline "720x400"x70.1   28.32  720 738 846 900  400 412 414 449 -hsync +vsync (31.5 kHz e)
[    38.221] (II) AMDGPU(0): EDID for output DisplayPort-1
[    38.221] (II) AMDGPU(0): EDID for output DisplayPort-2
[    38.221] (II) AMDGPU(0): EDID for output HDMI-A-0
[    38.221] (II) AMDGPU(0): EDID for output DVI-D-0
[    38.221] (II) AMDGPU(0): Output DisplayPort-0 connected
[    38.221] (II) AMDGPU(0): Output DisplayPort-1 disconnected
[    38.221] (II) AMDGPU(0): Output DisplayPort-2 disconnected
[    38.221] (II) AMDGPU(0): Output HDMI-A-0 disconnected
[    38.221] (II) AMDGPU(0): Output DVI-D-0 disconnected
[    38.221] (II) AMDGPU(0): Using exact sizes for initial modes
[    38.221] (II) AMDGPU(0): Output DisplayPort-0 using initial mode 1920x1080
[    38.221] (II) AMDGPU(0): Using default gamma of (1.0, 1.0, 1.0) unless otherwise stated.
[    38.221] (II) AMDGPU(0): mem size init: gart size :1ff563000 vram size: s:200000000 visible:e4ef000
[    38.221] (==) AMDGPU(0): DPI set to (96, 96)
[    38.221] (II) Loading sub module "ramdac"
[    38.221] (II) LoadModule: "ramdac"
[    38.221] (II) Module "ramdac" already built-in
[    38.221] (--) Depth 24 pixmap format is 32 bpp
[    38.259] (II) AMDGPU(0): [DRI2] Setup complete
[    38.259] (II) AMDGPU(0): [DRI2]   DRI driver: amdgpu
[    38.259] (II) AMDGPU(0): [DRI2]   VDPAU driver: amdgpu
[    38.259] (II) AMDGPU(0): Front buffer pitch: 7680 bytes
[    38.259] (II) AMDGPU(0): SYNC extension fences enabled
[    38.259] (II) AMDGPU(0): Present extension enabled
[    38.259] (**) AMDGPU(0): DRI3 enabled
[    38.259] (==) AMDGPU(0): Backing store enabled
[    38.259] (II) AMDGPU(0): Direct rendering enabled
[    38.301] (II) AMDGPU(0): Use GLAMOR acceleration.
[    38.301] (II) AMDGPU(0): Acceleration enabled
[    38.301] (==) AMDGPU(0): DPMS enabled
[    38.301] (==) AMDGPU(0): Silken mouse enabled
[    38.301] (II) AMDGPU(0): Set up textured video (glamor)
[    38.301] (II) AMDGPU(0): RandR 1.2 enabled, ignore the following RandR disabled message.
[    38.302] (--) RandR disabled
[    38.348] (II) AIGLX: enabled GLX_MESA_copy_sub_buffer
[    38.348] (II) AIGLX: enabled GLX_ARB_create_context
[    38.348] (II) AIGLX: enabled GLX_ARB_create_context_profile
[    38.348] (II) AIGLX: enabled GLX_EXT_create_context_es2_profile
[    38.348] (II) AIGLX: enabled GLX_INTEL_swap_event
[    38.348] (II) AIGLX: enabled GLX_SGI_swap_control and GLX_MESA_swap_control
[    38.348] (II) AIGLX: enabled GLX_EXT_framebuffer_sRGB
[    38.348] (II) AIGLX: enabled GLX_ARB_fbconfig_float
[    38.348] (II) AIGLX: GLX_EXT_texture_from_pixmap backed by buffer objects
[    38.349] (II) AIGLX: Loaded and initialized amdgpu
[    38.349] (II) GLX: Initialized DRI2 GL provider for screen 0
[    38.361] (II) AMDGPU(0): Setting screen physical size to 508 x 285
[    39.401] (II) config/udev: Adding input device Power Button (/dev/input/event4)
[    39.401] (**) Power Button: Applying InputClass "evdev keyboard catchall"
[    39.401] (II) LoadModule: "evdev"
[    39.509] (II) Loading /usr/lib64/xorg/modules/input/evdev_drv.so
[    39.561] (II) Module evdev: vendor="X.Org Foundation"
[    39.561] 	compiled for 1.17.4, module version = 2.9.2
[    39.561] 	Module class: X.Org XInput Driver
[    39.561] 	ABI class: X.Org XInput driver, version 21.0
[    39.561] (II) Using input driver 'evdev' for 'Power Button'
[    39.561] (**) Power Button: always reports core events
[    39.561] (**) evdev: Power Button: Device: "/dev/input/event4"
[    39.561] (--) evdev: Power Button: Vendor 0 Product 0x1
[    39.561] (--) evdev: Power Button: Found keys
[    39.561] (II) evdev: Power Button: Configuring as keyboard
[    39.561] (**) Option "config_info" "udev:/sys/devices/LNXSYSTM:00/LNXPWRBN:00/input/input4/event4"
[    39.561] (II) XINPUT: Adding extended input device "Power Button" (type: KEYBOARD, id 6)
[    39.561] (**) Option "xkb_rules" "evdev"
[    39.561] (**) Option "xkb_model" "pc104"
[    39.561] (**) Option "xkb_layout" "us"
[    39.577] (II) config/udev: Adding input device Power Button (/dev/input/event3)
[    39.577] (**) Power Button: Applying InputClass "evdev keyboard catchall"
[    39.577] (II) Using input driver 'evdev' for 'Power Button'
[    39.577] (**) Power Button: always reports core events
[    39.577] (**) evdev: Power Button: Device: "/dev/input/event3"
[    39.577] (--) evdev: Power Button: Vendor 0 Product 0x1
[    39.577] (--) evdev: Power Button: Found keys
[    39.577] (II) evdev: Power Button: Configuring as keyboard
[    39.577] (**) Option "config_info" "udev:/sys/devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input3/event3"
[    39.577] (II) XINPUT: Adding extended input device "Power Button" (type: KEYBOARD, id 7)
[    39.577] (**) Option "xkb_rules" "evdev"
[    39.577] (**) Option "xkb_model" "pc104"
[    39.577] (**) Option "xkb_layout" "us"
[    39.577] (II) config/udev: Adding input device HDA ATI HDMI HDMI/DP,pcm=3 (/dev/input/event10)
[    39.577] (II) No input driver specified, ignoring this device.
[    39.577] (II) This device may have been added with another device file.
[    39.578] (II) config/udev: Adding input device HDA ATI HDMI HDMI/DP,pcm=7 (/dev/input/event11)
[    39.578] (II) No input driver specified, ignoring this device.
[    39.578] (II) This device may have been added with another device file.
[    39.578] (II) config/udev: Adding input device HDA ATI HDMI HDMI/DP,pcm=8 (/dev/input/event12)
[    39.578] (II) No input driver specified, ignoring this device.
[    39.578] (II) This device may have been added with another device file.
[    39.578] (II) config/udev: Adding input device HDA ATI HDMI HDMI/DP,pcm=9 (/dev/input/event13)
[    39.578] (II) No input driver specified, ignoring this device.
[    39.578] (II) This device may have been added with another device file.
[    39.578] (II) config/udev: Adding input device HDA ATI HDMI HDMI/DP,pcm=10 (/dev/input/event14)
[    39.578] (II) No input driver specified, ignoring this device.
[    39.578] (II) This device may have been added with another device file.
[    39.579] (II) config/udev: Adding input device HDA ATI HDMI HDMI/DP,pcm=11 (/dev/input/event15)
[    39.579] (II) No input driver specified, ignoring this device.
[    39.579] (II) This device may have been added with another device file.
[    39.579] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Pen (/dev/input/event7)
[    39.579] (**) Wacom Bamboo 2FG 4x5 Pen: Applying InputClass "evdev tablet catchall"
[    39.579] (**) Wacom Bamboo 2FG 4x5 Pen: Applying InputClass "Wacom USB device class"
[    39.579] (**) Wacom Bamboo 2FG 4x5 Pen: Applying InputClass "Wacom class"
[    39.579] (**) Wacom Bamboo 2FG 4x5 Pen: Applying InputClass "Wacom USB device class"
[    39.579] (II) LoadModule: "wacom"
[    39.579] (II) Loading /usr/lib64/xorg/modules/input/wacom_drv.so
[    39.710] (II) Module wacom: vendor="X.Org Foundation"
[    39.710] 	compiled for 1.17.4, module version = 0.31.0
[    39.710] 	Module class: X.Org XInput Driver
[    39.710] 	ABI class: X.Org XInput driver, version 21.0
[    39.710] (II) wacom: Driver for Wacom graphics tablets: PenPartner, Graphire,
	Graphire2 4x5, Graphire2 5x7, Graphire3 4x5, Graphire3 6x8,
	Graphire4 4x5, Graphire4 6x8, BambooFun 4x5, BambooFun 6x8,
	Bamboo1 Medium, Graphire4 6x8 BlueTooth, CTL-460, CTH-461, CTL-660,
	CTL-461/S, Bamboo Touch, CTH-460/K, CTH-461/S, CTH-661/S1, CTH-461/L,
	CTH-661/L, Intuos 4x5, Intuos 6x8, Intuos 9x12, Intuos 12x12,
	Intuos 12x18, PTU600, PL400, PL500, PL600, PL600SX, PL550, PL800,
	PL700, PL510, PL710, DTI520, DTF720, DTF720a, DTF521, DTU1931,
	DTU2231, DTU1631, Intuos2 4x5, Intuos2 6x8, Intuos2 9x12,
	Intuos2 12x12, Intuos2 12x18, Intuos2 6x8 , Volito, PenStation,
	Volito2 4x5, Volito2 2x3, PenPartner2, Bamboo, Bamboo1, Bamboo1 4x6,
	Bamboo1 5x8, Intuos3 4x5, Intuos3 6x8, Intuos3 9x12, Intuos3 12x12,
	Intuos3 12x19, Intuos3 6x11, Intuos3 4x6, Intuos4 4x6, Intuos4 6x9,
	Intuos4 8x13, Intuos4 12x19, Intuos4 WL USB Endpoint,
	Intuos4 WL Bluetooth Endpoint, Intuos5 touch S, Intuos5 touch M,
	Intuos5 touch L, Intuos5 S, Intuos5 M, Intuos Pro S, Intuos Pro M,
	Intuos Pro L, Cintiq 21UX, Cintiq 20WSX, Cintiq 12WX, Cintiq 21UX2,
	Cintiq 24HD, Cintiq 22HD, Cintiq 24HD touch (EMR digitizer),
	Cintiq 13HD, DTK2241, DTH2242, Cintiq 22HDT, TabletPC 0x90,
	TabletPC 0x93, TabletPC 0x97, TabletPC 0x9A, CapPlus  0x9F,
	TabletPC 0xE2, TabletPC 0xE3, TabletPC 0xE5, TabletPC 0xE6,
	TabletPC 0xEC, TabletPC 0xED, TabletPC 0xEF, TabletPC 0x100,
	TabletPC 0x101, TabletPC 0x10D, TabletPC 0x116, TabletPC 0x12C,
	TabletPC 0x4001, TabletPC 0x4004, TabletPC 0x5000, TabletPC 0x5002,
	usb:172f:0024, usb:172f:0025, usb:172f:0026, usb:172f:0027,
	usb:172f:0028, usb:172f:0030, usb:172f:0031, usb:172f:0032,
	usb:172f:0033, usb:172f:0034, usb:172f:0035, usb:172f:0036,
	usb:172f:0037, usb:172f:0038, usb:172f:0039, usb:172f:0051,
	usb:172f:0052, usb:172f:0053, usb:172f:0054, usb:172f:0055,
	usb:172f:0056, usb:172f:0057, usb:172f:0058, usb:172f:0500,
	usb:172f:0501, usb:172f:0502, usb:172f:0503, usb:1b96:0001,
	usb:17ef:6004
[    39.711] (II) Using input driver 'wacom' for 'Wacom Bamboo 2FG 4x5 Pen'
[    39.711] (**) Wacom Bamboo 2FG 4x5 Pen: always reports core events
[    39.711] (**) Option "Device" "/dev/input/event7"
[    39.711] (II) Wacom Bamboo 2FG 4x5 Pen: type not specified, assuming 'stylus'.
[    39.711] (II) Wacom Bamboo 2FG 4x5 Pen: other types will be automatically added.
[    39.711] (--) Wacom Bamboo 2FG 4x5 Pen stylus: using pressure threshold of 27 for button 1
[    39.711] (--) Wacom Bamboo 2FG 4x5 Pen stylus: maxX=14720 maxY=9200 maxZ=1023 resX=100000 resY=100000  tilt=disabled
[    39.711] (II) Wacom Bamboo 2FG 4x5 Pen stylus: hotplugging dependent devices.
[    39.711] (EE) Wacom Bamboo 2FG 4x5 Pen stylus: Invalid type 'cursor' for this device.
[    39.711] (EE) Wacom Bamboo 2FG 4x5 Pen stylus: Invalid type 'touch' for this device.
[    39.711] (EE) Wacom Bamboo 2FG 4x5 Pen stylus: Invalid type 'pad' for this device.
[    39.711] (II) Wacom Bamboo 2FG 4x5 Pen stylus: hotplugging completed.
[    39.727] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:12.0/usb4/4-5/4-5:1.0/0003:056A:00D1.0008/input/input7/event7"
[    39.728] (II) XINPUT: Adding extended input device "Wacom Bamboo 2FG 4x5 Pen stylus" (type: STYLUS, id 8)
[    39.728] (**) Wacom Bamboo 2FG 4x5 Pen stylus: (accel) keeping acceleration scheme 1
[    39.728] (**) Wacom Bamboo 2FG 4x5 Pen stylus: (accel) acceleration profile 0
[    39.728] (**) Wacom Bamboo 2FG 4x5 Pen stylus: (accel) acceleration factor: 2.000
[    39.728] (**) Wacom Bamboo 2FG 4x5 Pen stylus: (accel) acceleration threshold: 4
[    39.728] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Pen (/dev/input/mouse2)
[    39.728] (II) No input driver specified, ignoring this device.
[    39.728] (II) This device may have been added with another device file.
[    39.729] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Finger (/dev/input/event8)
[    39.729] (**) Wacom Bamboo 2FG 4x5 Finger: Applying InputClass "evdev touchpad catchall"
[    39.729] (**) Wacom Bamboo 2FG 4x5 Finger: Applying InputClass "evdev tablet catchall"
[    39.729] (**) Wacom Bamboo 2FG 4x5 Finger: Applying InputClass "Wacom USB device class"
[    39.729] (**) Wacom Bamboo 2FG 4x5 Finger: Applying InputClass "Wacom class"
[    39.729] (**) Wacom Bamboo 2FG 4x5 Finger: Applying InputClass "Wacom USB device class"
[    39.729] (II) Using input driver 'wacom' for 'Wacom Bamboo 2FG 4x5 Finger'
[    39.729] (**) Wacom Bamboo 2FG 4x5 Finger: always reports core events
[    39.729] (**) Option "Device" "/dev/input/event8"
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger: Invalid type 'stylus' for this device.
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger: Invalid type 'eraser' for this device.
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger: Invalid type 'cursor' for this device.
[    39.729] (II) Wacom Bamboo 2FG 4x5 Finger: type not specified, assuming 'touch'.
[    39.729] (II) Wacom Bamboo 2FG 4x5 Finger: other types will be automatically added.
[    39.729] (--) Wacom Bamboo 2FG 4x5 Finger touch: maxX=15360 maxY=10240 maxZ=0 resX=128000 resY=128000
[    39.729] (II) Wacom Bamboo 2FG 4x5 Finger touch: hotplugging dependent devices.
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger touch: Invalid type 'stylus' for this device.
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger touch: Invalid type 'eraser' for this device.
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger touch: Invalid type 'cursor' for this device.
[    39.729] (EE) Wacom Bamboo 2FG 4x5 Finger touch: Invalid type 'pad' for this device.
[    39.729] (II) Wacom Bamboo 2FG 4x5 Finger touch: hotplugging completed.
[    39.744] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:12.0/usb4/4-5/4-5:1.1/0003:056A:00D1.0009/input/input11/event8"
[    39.744] (II) XINPUT: Adding extended input device "Wacom Bamboo 2FG 4x5 Finger touch" (type: TOUCH, id 9)
[    39.744] (**) Wacom Bamboo 2FG 4x5 Finger touch: (accel) keeping acceleration scheme 1
[    39.744] (**) Wacom Bamboo 2FG 4x5 Finger touch: (accel) acceleration profile 0
[    39.744] (**) Wacom Bamboo 2FG 4x5 Finger touch: (accel) acceleration factor: 2.000
[    39.744] (**) Wacom Bamboo 2FG 4x5 Finger touch: (accel) acceleration threshold: 4
[    39.744] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Finger (/dev/input/mouse3)
[    39.744] (II) No input driver specified, ignoring this device.
[    39.744] (II) This device may have been added with another device file.
[    39.745] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Pad (/dev/input/event9)
[    39.745] (**) Wacom Bamboo 2FG 4x5 Pad: Applying InputClass "evdev tablet catchall"
[    39.745] (**) Wacom Bamboo 2FG 4x5 Pad: Applying InputClass "Wacom USB device class"
[    39.745] (**) Wacom Bamboo 2FG 4x5 Pad: Applying InputClass "Wacom class"
[    39.745] (**) Wacom Bamboo 2FG 4x5 Pad: Applying InputClass "Wacom USB device class"
[    39.745] (II) Using input driver 'wacom' for 'Wacom Bamboo 2FG 4x5 Pad'
[    39.745] (**) Wacom Bamboo 2FG 4x5 Pad: always reports core events
[    39.745] (**) Option "Device" "/dev/input/event9"
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad: Invalid type 'stylus' for this device.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad: Invalid type 'eraser' for this device.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad: Invalid type 'cursor' for this device.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad: Invalid type 'touch' for this device.
[    39.745] (II) Wacom Bamboo 2FG 4x5 Pad: type not specified, assuming 'pad'.
[    39.745] (II) Wacom Bamboo 2FG 4x5 Pad: other types will be automatically added.
[    39.745] (II) Wacom Bamboo 2FG 4x5 Pad pad: hotplugging dependent devices.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad pad: Invalid type 'stylus' for this device.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad pad: Invalid type 'eraser' for this device.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad pad: Invalid type 'cursor' for this device.
[    39.745] (EE) Wacom Bamboo 2FG 4x5 Pad pad: Invalid type 'touch' for this device.
[    39.745] (II) Wacom Bamboo 2FG 4x5 Pad pad: hotplugging completed.
[    39.760] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:12.0/usb4/4-5/4-5:1.1/0003:056A:00D1.0009/input/input12/event9"
[    39.760] (II) XINPUT: Adding extended input device "Wacom Bamboo 2FG 4x5 Pad pad" (type: PAD, id 10)
[    39.760] (**) Wacom Bamboo 2FG 4x5 Pad pad: (accel) keeping acceleration scheme 1
[    39.760] (**) Wacom Bamboo 2FG 4x5 Pad pad: (accel) acceleration profile 0
[    39.760] (**) Wacom Bamboo 2FG 4x5 Pad pad: (accel) acceleration factor: 2.000
[    39.760] (**) Wacom Bamboo 2FG 4x5 Pad pad: (accel) acceleration threshold: 4
[    39.760] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Pad (/dev/input/js0)
[    39.760] (II) No input driver specified, ignoring this device.
[    39.760] (II) This device may have been added with another device file.
[    39.761] (II) config/udev: Adding input device Wacom Bamboo 2FG 4x5 Pad (/dev/input/mouse4)
[    39.761] (II) No input driver specified, ignoring this device.
[    39.761] (II) This device may have been added with another device file.
[    39.761] (II) config/udev: Adding input device HD Pro Webcam C920 (/dev/input/event6)
[    39.761] (**) HD Pro Webcam C920: Applying InputClass "evdev keyboard catchall"
[    39.761] (II) Using input driver 'evdev' for 'HD Pro Webcam C920'
[    39.761] (**) HD Pro Webcam C920: always reports core events
[    39.761] (**) evdev: HD Pro Webcam C920: Device: "/dev/input/event6"
[    39.761] (--) evdev: HD Pro Webcam C920: Vendor 0x46d Product 0x82d
[    39.761] (--) evdev: HD Pro Webcam C920: Found keys
[    39.761] (II) evdev: HD Pro Webcam C920: Configuring as keyboard
[    39.761] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:12.2/usb1/1-2/1-2:1.0/input/input6/event6"
[    39.761] (II) XINPUT: Adding extended input device "HD Pro Webcam C920" (type: KEYBOARD, id 11)
[    39.761] (**) Option "xkb_rules" "evdev"
[    39.761] (**) Option "xkb_model" "pc104"
[    39.761] (**) Option "xkb_layout" "us"
[    39.762] (II) config/udev: Adding input device Logitech USB-PS/2 Optical Mouse (/dev/input/event1)
[    39.762] (**) Logitech USB-PS/2 Optical Mouse: Applying InputClass "evdev pointer catchall"
[    39.762] (II) Using input driver 'evdev' for 'Logitech USB-PS/2 Optical Mouse'
[    39.762] (**) Logitech USB-PS/2 Optical Mouse: always reports core events
[    39.762] (**) evdev: Logitech USB-PS/2 Optical Mouse: Device: "/dev/input/event1"
[    39.762] (--) evdev: Logitech USB-PS/2 Optical Mouse: Vendor 0x46d Product 0xc03e
[    39.762] (--) evdev: Logitech USB-PS/2 Optical Mouse: Found 3 mouse buttons
[    39.762] (--) evdev: Logitech USB-PS/2 Optical Mouse: Found scroll wheel(s)
[    39.762] (--) evdev: Logitech USB-PS/2 Optical Mouse: Found relative axes
[    39.762] (--) evdev: Logitech USB-PS/2 Optical Mouse: Found x and y relative axes
[    39.762] (II) evdev: Logitech USB-PS/2 Optical Mouse: Configuring as mouse
[    39.762] (II) evdev: Logitech USB-PS/2 Optical Mouse: Adding scrollwheel support
[    39.762] (**) evdev: Logitech USB-PS/2 Optical Mouse: YAxisMapping: buttons 4 and 5
[    39.762] (**) evdev: Logitech USB-PS/2 Optical Mouse: EmulateWheelButton: 4, EmulateWheelInertia: 10, EmulateWheelTimeout: 200
[    39.762] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:13.0/usb5/5-3/5-3:1.0/0003:046D:C03E.0001/input/input1/event1"
[    39.762] (II) XINPUT: Adding extended input device "Logitech USB-PS/2 Optical Mouse" (type: MOUSE, id 12)
[    39.762] (II) evdev: Logitech USB-PS/2 Optical Mouse: initialized for relative axes.
[    39.762] (**) Logitech USB-PS/2 Optical Mouse: (accel) keeping acceleration scheme 1
[    39.762] (**) Logitech USB-PS/2 Optical Mouse: (accel) acceleration profile 0
[    39.762] (**) Logitech USB-PS/2 Optical Mouse: (accel) acceleration factor: 2.000
[    39.762] (**) Logitech USB-PS/2 Optical Mouse: (accel) acceleration threshold: 4
[    39.763] (II) config/udev: Adding input device Logitech USB-PS/2 Optical Mouse (/dev/input/mouse0)
[    39.763] (II) No input driver specified, ignoring this device.
[    39.763] (II) This device may have been added with another device file.
[    39.763] (II) config/udev: Adding input device Valve Software Steam Controller (/dev/input/event2)
[    39.763] (**) Valve Software Steam Controller: Applying InputClass "evdev pointer catchall"
[    39.763] (**) Valve Software Steam Controller: Applying InputClass "evdev keyboard catchall"
[    39.764] (II) Using input driver 'evdev' for 'Valve Software Steam Controller'
[    39.764] (**) Valve Software Steam Controller: always reports core events
[    39.764] (**) evdev: Valve Software Steam Controller: Device: "/dev/input/event2"
[    39.764] (--) evdev: Valve Software Steam Controller: Vendor 0x28de Product 0x1142
[    39.764] (--) evdev: Valve Software Steam Controller: Found 9 mouse buttons
[    39.764] (--) evdev: Valve Software Steam Controller: Found scroll wheel(s)
[    39.764] (--) evdev: Valve Software Steam Controller: Found relative axes
[    39.764] (--) evdev: Valve Software Steam Controller: Found x and y relative axes
[    39.764] (--) evdev: Valve Software Steam Controller: Found keys
[    39.764] (II) evdev: Valve Software Steam Controller: Configuring as mouse
[    39.764] (II) evdev: Valve Software Steam Controller: Configuring as keyboard
[    39.764] (II) evdev: Valve Software Steam Controller: Adding scrollwheel support
[    39.764] (**) evdev: Valve Software Steam Controller: YAxisMapping: buttons 4 and 5
[    39.764] (**) evdev: Valve Software Steam Controller: EmulateWheelButton: 4, EmulateWheelInertia: 10, EmulateWheelTimeout: 200
[    39.764] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:13.0/usb5/5-5/5-5:1.0/0003:28DE:1142.0003/input/input2/event2"
[    39.764] (II) XINPUT: Adding extended input device "Valve Software Steam Controller" (type: KEYBOARD, id 13)
[    39.764] (**) Option "xkb_rules" "evdev"
[    39.764] (**) Option "xkb_model" "pc104"
[    39.764] (**) Option "xkb_layout" "us"
[    39.764] (II) evdev: Valve Software Steam Controller: initialized for relative axes.
[    39.764] (**) Valve Software Steam Controller: (accel) keeping acceleration scheme 1
[    39.764] (**) Valve Software Steam Controller: (accel) acceleration profile 0
[    39.764] (**) Valve Software Steam Controller: (accel) acceleration factor: 2.000
[    39.764] (**) Valve Software Steam Controller: (accel) acceleration threshold: 4
[    39.764] (II) config/udev: Adding input device Valve Software Steam Controller (/dev/input/mouse1)
[    39.764] (II) No input driver specified, ignoring this device.
[    39.765] (II) This device may have been added with another device file.
[    39.765] (II) config/udev: Adding input device HDA ATI SB Front Mic (/dev/input/event16)
[    39.765] (II) No input driver specified, ignoring this device.
[    39.765] (II) This device may have been added with another device file.
[    39.765] (II) config/udev: Adding input device HDA ATI SB Rear Mic (/dev/input/event17)
[    39.765] (II) No input driver specified, ignoring this device.
[    39.765] (II) This device may have been added with another device file.
[    39.765] (II) config/udev: Adding input device HDA ATI SB Line (/dev/input/event18)
[    39.765] (II) No input driver specified, ignoring this device.
[    39.765] (II) This device may have been added with another device file.
[    39.766] (II) config/udev: Adding input device HDA ATI SB Line Out Front (/dev/input/event19)
[    39.766] (II) No input driver specified, ignoring this device.
[    39.766] (II) This device may have been added with another device file.
[    39.766] (II) config/udev: Adding input device HDA ATI SB Line Out Surround (/dev/input/event20)
[    39.766] (II) No input driver specified, ignoring this device.
[    39.766] (II) This device may have been added with another device file.
[    39.766] (II) config/udev: Adding input device HDA ATI SB Line Out CLFE (/dev/input/event21)
[    39.766] (II) No input driver specified, ignoring this device.
[    39.766] (II) This device may have been added with another device file.
[    39.767] (II) config/udev: Adding input device HDA ATI SB Line Out Side (/dev/input/event22)
[    39.767] (II) No input driver specified, ignoring this device.
[    39.767] (II) This device may have been added with another device file.
[    39.767] (II) config/udev: Adding input device HDA ATI SB Front Headphone (/dev/input/event23)
[    39.767] (II) No input driver specified, ignoring this device.
[    39.767] (II) This device may have been added with another device file.
[    39.767] (II) config/udev: Adding input device AT Translated Set 2 keyboard (/dev/input/event0)
[    39.767] (**) AT Translated Set 2 keyboard: Applying InputClass "evdev keyboard catchall"
[    39.767] (II) Using input driver 'evdev' for 'AT Translated Set 2 keyboard'
[    39.767] (**) AT Translated Set 2 keyboard: always reports core events
[    39.767] (**) evdev: AT Translated Set 2 keyboard: Device: "/dev/input/event0"
[    39.767] (--) evdev: AT Translated Set 2 keyboard: Vendor 0x1 Product 0x1
[    39.767] (--) evdev: AT Translated Set 2 keyboard: Found keys
[    39.767] (II) evdev: AT Translated Set 2 keyboard: Configuring as keyboard
[    39.767] (**) Option "config_info" "udev:/sys/devices/platform/i8042/serio0/input/input0/event0"
[    39.767] (II) XINPUT: Adding extended input device "AT Translated Set 2 keyboard" (type: KEYBOARD, id 14)
[    39.767] (**) Option "xkb_rules" "evdev"
[    39.767] (**) Option "xkb_model" "pc104"
[    39.767] (**) Option "xkb_layout" "us"
[    39.768] (II) config/udev: Adding input device PC Speaker (/dev/input/event5)
[    39.768] (II) No input driver specified, ignoring this device.
[    39.768] (II) This device may have been added with another device file.
[    39.779] (**) Wacom Bamboo 2FG 4x5 Pen eraser: Applying InputClass "evdev tablet catchall"
[    39.779] (**) Wacom Bamboo 2FG 4x5 Pen eraser: Applying InputClass "Wacom USB device class"
[    39.779] (**) Wacom Bamboo 2FG 4x5 Pen eraser: Applying InputClass "Wacom class"
[    39.779] (**) Wacom Bamboo 2FG 4x5 Pen eraser: Applying InputClass "Wacom USB device class"
[    39.779] (II) Using input driver 'wacom' for 'Wacom Bamboo 2FG 4x5 Pen eraser'
[    39.779] (**) Wacom Bamboo 2FG 4x5 Pen eraser: always reports core events
[    39.779] (**) Option "Device" "/dev/input/event7"
[    39.779] (**) Option "Type" "eraser"
[    39.779] (--) Wacom Bamboo 2FG 4x5 Pen eraser: maxX=14720 maxY=9200 maxZ=1023 resX=100000 resY=100000  tilt=disabled
[    39.784] (**) Option "config_info" "udev:/sys/devices/pci0000:00/0000:00:12.0/usb4/4-5/4-5:1.0/0003:056A:00D1.0008/input/input7/event7"
[    39.784] (II) XINPUT: Adding extended input device "Wacom Bamboo 2FG 4x5 Pen eraser" (type: ERASER, id 15)
[    39.784] (**) Wacom Bamboo 2FG 4x5 Pen eraser: (accel) keeping acceleration scheme 1
[    39.784] (**) Wacom Bamboo 2FG 4x5 Pen eraser: (accel) acceleration profile 0
[    39.784] (**) Wacom Bamboo 2FG 4x5 Pen eraser: (accel) acceleration factor: 2.000
[    39.784] (**) Wacom Bamboo 2FG 4x5 Pen eraser: (accel) acceleration threshold: 4
[    58.666] (II) AMDGPU(0): EDID vendor "DEL", prod id 41056
[    58.666] (II) AMDGPU(0): Using EDID range info for horizontal sync
[    58.667] (II) AMDGPU(0): Using EDID range info for vertical refresh
[    58.667] (II) AMDGPU(0): Printing DDC gathered Modelines:
[    58.667] (II) AMDGPU(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync (67.5 kHz eP)
[    58.667] (II) AMDGPU(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600 601 605 628 +hsync +vsync (37.9 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480 481 484 500 -hsync -vsync (37.5 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480 490 492 525 -hsync -vsync (31.5 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400 412 414 449 -hsync +vsync (31.5 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688  1024 1025 1028 1066 +hsync +vsync (80.0 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312  768 769 772 800 +hsync +vsync (60.0 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344  768 771 777 806 -hsync -vsync (48.4 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600 601 604 625 +hsync +vsync (46.9 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600  864 865 868 900 +hsync +vsync (67.5 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688  1024 1025 1028 1066 +hsync +vsync (64.0 kHz e)
[    58.667] (II) AMDGPU(0): Modeline "1920x1080"x60.0  172.80  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync (67.1 kHz e)
[    59.116] (II) AMDGPU(0): EDID vendor "DEL", prod id 41056
[    59.116] (II) AMDGPU(0): Using hsync ranges from config file
[    59.116] (II) AMDGPU(0): Using vrefresh ranges from config file
[    59.116] (II) AMDGPU(0): Printing DDC gathered Modelines:
[    59.116] (II) AMDGPU(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync (67.5 kHz eP)
[    59.116] (II) AMDGPU(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600 601 605 628 +hsync +vsync (37.9 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480 481 484 500 -hsync -vsync (37.5 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480 490 492 525 -hsync -vsync (31.5 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400 412 414 449 -hsync +vsync (31.5 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688  1024 1025 1028 1066 +hsync +vsync (80.0 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312  768 769 772 800 +hsync +vsync (60.0 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344  768 771 777 806 -hsync -vsync (48.4 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600 601 604 625 +hsync +vsync (46.9 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600  864 865 868 900 +hsync +vsync (67.5 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688  1024 1025 1028 1066 +hsync +vsync (64.0 kHz e)
[    59.116] (II) AMDGPU(0): Modeline "1920x1080"x60.0  172.80  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync (67.1 kHz e)
[    72.902] (II) AMDGPU(0): EDID vendor "DEL", prod id 41056
[    72.902] (II) AMDGPU(0): Using hsync ranges from config file
[    72.902] (II) AMDGPU(0): Using vrefresh ranges from config file
[    72.902] (II) AMDGPU(0): Printing DDC gathered Modelines:
[    72.902] (II) AMDGPU(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync (67.5 kHz eP)
[    72.902] (II) AMDGPU(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600 601 605 628 +hsync +vsync (37.9 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480 481 484 500 -hsync -vsync (37.5 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480 490 492 525 -hsync -vsync (31.5 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400 412 414 449 -hsync +vsync (31.5 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688  1024 1025 1028 1066 +hsync +vsync (80.0 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312  768 769 772 800 +hsync +vsync (60.0 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344  768 771 777 806 -hsync -vsync (48.4 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600 601 604 625 +hsync +vsync (46.9 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600  864 865 868 900 +hsync +vsync (67.5 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688  1024 1025 1028 1066 +hsync +vsync (64.0 kHz e)
[    72.902] (II) AMDGPU(0): Modeline "1920x1080"x60.0  172.80  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync (67.1 kHz e)
[    72.903] (II) AMDGPU(0): EDID vendor "DEL", prod id 41056
[    72.903] (II) AMDGPU(0): Using hsync ranges from config file
[    72.903] (II) AMDGPU(0): Using vrefresh ranges from config file
[    72.903] (II) AMDGPU(0): Printing DDC gathered Modelines:
[    72.903] (II) AMDGPU(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync (67.5 kHz eP)
[    72.903] (II) AMDGPU(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600 601 605 628 +hsync +vsync (37.9 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480 481 484 500 -hsync -vsync (37.5 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480 490 492 525 -hsync -vsync (31.5 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400 412 414 449 -hsync +vsync (31.5 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688  1024 1025 1028 1066 +hsync +vsync (80.0 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312  768 769 772 800 +hsync +vsync (60.0 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344  768 771 777 806 -hsync -vsync (48.4 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600 601 604 625 +hsync +vsync (46.9 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600  864 865 868 900 +hsync +vsync (67.5 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688  1024 1025 1028 1066 +hsync +vsync (64.0 kHz e)
[    72.903] (II) AMDGPU(0): Modeline "1920x1080"x60.0  172.80  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync (67.1 kHz e)
[ 59869.729] (II) AMDGPU(0): EDID vendor "DEL", prod id 41056
[ 59869.729] (II) AMDGPU(0): Using hsync ranges from config file
[ 59869.729] (II) AMDGPU(0): Using vrefresh ranges from config file
[ 59869.729] (II) AMDGPU(0): Printing DDC gathered Modelines:
[ 59869.729] (II) AMDGPU(0): Modeline "1920x1080"x0.0  148.50  1920 2008 2052 2200  1080 1084 1089 1125 +hsync +vsync (67.5 kHz eP)
[ 59869.729] (II) AMDGPU(0): Modeline "800x600"x0.0   40.00  800 840 968 1056  600 601 605 628 +hsync +vsync (37.9 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "640x480"x0.0   31.50  640 656 720 840  480 481 484 500 -hsync -vsync (37.5 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "640x480"x0.0   25.18  640 656 752 800  480 490 492 525 -hsync -vsync (31.5 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "720x400"x0.0   28.32  720 738 846 900  400 412 414 449 -hsync +vsync (31.5 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "1280x1024"x0.0  135.00  1280 1296 1440 1688  1024 1025 1028 1066 +hsync +vsync (80.0 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "1024x768"x0.0   78.75  1024 1040 1136 1312  768 769 772 800 +hsync +vsync (60.0 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "1024x768"x0.0   65.00  1024 1048 1184 1344  768 771 777 806 -hsync -vsync (48.4 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "800x600"x0.0   49.50  800 816 896 1056  600 601 604 625 +hsync +vsync (46.9 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "1152x864"x0.0  108.00  1152 1216 1344 1600  864 865 868 900 +hsync +vsync (67.5 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "1280x1024"x0.0  108.00  1280 1328 1440 1688  1024 1025 1028 1066 +hsync +vsync (64.0 kHz e)
[ 59869.729] (II) AMDGPU(0): Modeline "1920x1080"x60.0  172.80  1920 2040 2248 2576  1080 1081 1084 1118 -hsync +vsync (67.1 kHz e)
```
