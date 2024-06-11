ifneq ($(filter y, $(CONFIG_MACH_XIAOMI_E10) $(CONFIG_BOARD_E10)),)
obj-$(CONFIG_NEW_LEDS) += leds/
obj-$(CONFIG_INPUT) += input/
obj-$(CONFIG_SND_SOC) += amplifier/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif
