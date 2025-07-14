ifeq ($(CONFIG_MACH_XIAOMI_SDM845),y)
obj-$(CONFIG_SND_SOC) += amplifier/
obj-$(CONFIG_BCM_GPS_SPI_DRIVER) += gps/
obj-$(CONFIG_HALLS)    += halls/
obj-$(CONFIG_INPUT) += input/
obj-$(CONFIG_NEW_LEDS) += leds/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif
