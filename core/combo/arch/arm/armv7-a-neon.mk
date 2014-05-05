# Configuration for Linux on ARM.
# Generating binaries for the ARMv7-a architecture and higher with NEON
#
ARCH_ARM_HAVE_ARMV7A            := true
ARCH_ARM_HAVE_VFP               := true
ARCH_ARM_HAVE_VFP_D32           := true
ARCH_ARM_HAVE_NEON              := true

TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

arch_variant_cflags += \
    -mfloat-abi=softfp \
	-DHARDFLOAT \
    -mfpu=neon-vfpv4 \
    -mcpu=cortex-a15 \
    -mtune=cortex-a15 \
	-funroll-loops
    

arch_variant_ldflags := \
	-Wl,--fix-cortex-a8
