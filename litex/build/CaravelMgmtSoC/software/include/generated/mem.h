//--------------------------------------------------------------------------------
// Auto-generated by Migen (9a0be7a) & LiteX (9ac0137) on 2021-11-16 22:30:05
//--------------------------------------------------------------------------------
#ifndef __GENERATED_MEM_H
#define __GENERATED_MEM_H

#ifndef DFF_BASE
#define DFF_BASE 0x00000000L
#define DFF_SIZE 0x00000400
#endif

#ifndef SRAM_BASE
#define SRAM_BASE 0x01000000L
#define SRAM_SIZE 0x00000800
#endif

#ifndef FLASH_BASE
#define FLASH_BASE 0x10000000L
#define FLASH_SIZE 0x01000000
#endif

#ifndef MPRJ_BASE
#define MPRJ_BASE 0x30000000L
#define MPRJ_SIZE 0x00100000
#endif

#ifndef HK_BASE
#define HK_BASE 0x26000000L
#define HK_SIZE 0x00100000
#endif

#ifndef CSR_BASE
#define CSR_BASE 0x82000000L
#define CSR_SIZE 0x00010000
#endif

#ifndef MEM_REGIONS
#define MEM_REGIONS "DFF       0x00000000 0x400 \nSRAM      0x01000000 0x800 \nFLASH     0x10000000 0x1000000 \nMPRJ      0x30000000 0x100000 \nHK        0x26000000 0x100000 \nCSR       0x82000000 0x10000 "
#endif
#endif
