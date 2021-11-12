from migen import *
from litex.soc.interconnect import wishbone

kB = 1024

class OpenRAM(Module):
    def __init__(self, width=32, size=1*kB):
        self.bus = wishbone.Interface(width)

        # # #
        assert width in [32]
        assert size in [2*kB]
        depth_cascading = size//(2*kB)
        width_cascading = 1
        
        # Combine RAMs to increase Depth.
        # for d in range(depth_cascading):
        #     # Combine RAMs to increase Width.
        #     for w in range(width_cascading):
        datain   = Signal(32)
        dataout  = Signal(32)
        maskwren = Signal(4)
        wren_b   = Signal()
        cs_b     = Signal()

        # ro port signals
        self.clk1     = Signal()
        self.cs_b1    = Signal()
        self.adr1     = Signal(32)
        self.dataout1 = Signal(32)

        self.comb += [
            datain.eq(self.bus.dat_w[0:32]),
            # If(self.bus.adr[9:8+log2_int(depth_cascading)+1] == d,
            If(self.bus.adr[9:9+log2_int(depth_cascading)+1] == 1,
                wren_b.eq(~(self.bus.we & self.bus.stb & self.bus.cyc)),
                self.bus.dat_r[0:32].eq(dataout),
                cs_b.eq(0)
            ),
            # maskwren is nibble based
            maskwren[0].eq(self.bus.sel[0]),
            maskwren[1].eq(self.bus.sel[1]),
            maskwren[2].eq(self.bus.sel[2]),
            maskwren[3].eq(self.bus.sel[3]),
        ]
        # self.specials += Instance("sram_1rw1r_32_256_8_sky130",
        self.specials += Instance("sky130_sram_2kbyte_1rw1r_32x512_8",
            i_clk0      = ClockSignal("sys"),
            #i_STANDBY    = 0b0,
            #i_SLEEP      = 0b0,
            #i_POWEROFF   = 0b1,
            i_addr0   = self.bus.adr[:9],
            i_din0    = datain,
            i_wmask0  = maskwren,
            i_web0    = wren_b,
            i_csb0    = cs_b,
            o_dout0   = dataout,

            # ro port
            i_clk1    = self.clk1,
            i_addr1   = self.adr1,
            i_csb1    = self.cs_b1,
            o_dout1   = self.dataout1
        )

        self.sync += self.bus.ack.eq(self.bus.stb & self.bus.cyc & ~self.bus.ack)


class DFFRAM(Module):
    def __init__(self, width=32, size=1*kB):
        self.bus = wishbone.Interface(width)

        # # #
        assert width in [32]
        assert size in [1*kB]

        self.di   = Signal(32)
        self.do  = Signal(32)
        self.a  = Signal(32)
        self.we   = Signal()
        self.en     = Signal()

        self.comb += [
            self.di.eq(self.bus.dat_w[0:32]),
            self.bus.adr.eq(self.a[0:32]),
            self.we.eq((self.bus.we & self.bus.stb & self.bus.cyc)),
            self.bus.dat_r[0:32].eq(self.do),
            self.en.eq(self.bus.stb & self.bus.cyc),
        ]

        self.sync += self.bus.ack.eq(self.bus.stb & self.bus.cyc & ~self.bus.ack)
