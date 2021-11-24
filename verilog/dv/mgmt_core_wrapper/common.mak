# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# SPDX-License-Identifier: Apache-2.0

include ../../cpu_type.mak

PDK_PATH = $(PDK_ROOT)/sky130A
VERILOG_PATH = ../../..
RTL_PATH = $(VERILOG_PATH)/rtl
BEHAVIOURAL_MODELS = ../../vip

FIRMWARE_PATH = ../..
#GCC_PATH?=/ef/apps/bin
GCC_PATH?=/usr/local/bin
#GCC_PREFIX?=riscv32-unknown-elf
GCC_PREFIX?=riscv64-unknown-elf

SIM_DEFINES = -DFUNCTIONAL -DSIM

SIM?=RTL

.SUFFIXES:

%.vvp: %_tb.v %.hex
ifeq ($(SIM),RTL)
	iverilog -Ttyp $(SIM_DEFINES) \
	-I $(BEHAVIOURAL_MODELS) \
	-I $(PDK_PATH) -I $(RTL_PATH) \
	-o $@ $(VERILOG_FILES) $<
else
	iverilog -Ttyp $(SIM_DEFINES) -DGL -I $(BEHAVIOURAL_MODELS) \
	-I $(PDK_PATH) -I $(VERILOG_PATH) -I $(RTL_PATH) \
	-o $@ $<
endif

%.vcd: %.vvp
	vvp $<

%.elf: %.c
	@echo CPU=$(CPU)
	${GCC_PATH}/${GCC_PREFIX}-gcc -O0 -I ../.. -I ../../generated $(CPUFLAGS) -Wl,-Bstatic,-T,$(LINK_SCRIPT),--strip-debug -ffreestanding -nostdlib -mstrict-align -o $@ $(SOURCE_FILES) $<

%.hex: %.elf
	${GCC_PATH}/${GCC_PREFIX}-objcopy -O verilog $< $@
	# to fix flash base address
	sed -ie 's/@10000000/@00000000/g' $@

%.lst: %.elf
	${GCC_PATH}/${GCC_PREFIX}-objdump -D $< > $@

%.bin: %.elf
	#${GCC_PATH}/${GCC_PREFIX}-objcopy -O binary $< /dev/stdout | tail -c +1048577 > $@

check-env:
ifndef PDK_ROOT
#	$(error PDK_ROOT is undefined, please export it before running make)
endif
ifeq (,$(wildcard $(PDK_ROOT)/sky130A))
#	$(error $(PDK_ROOT)/sky130A not found, please install pdk before running make)
endif
ifeq (,$(wildcard $(GCC_PATH)/$(GCC_PREFIX)-gcc ))
	$(error $(GCC_PATH)/$(GCC_PREFIX)-gcc is not found, please export GCC_PATH and GCC_PREFIX before running make)
endif
# check for efabless style installation
ifeq (,$(wildcard $(PDK_ROOT)/sky130A/libs.ref/*/verilog))
SIM_DEFINES := ${SIM_DEFINES} -DEF_STYLE
endif
# ---- Clean ----

clean:
	rm -f *.elf *.hex *.bin *.vvp *.vcd *.log

.PHONY: clean hex all

