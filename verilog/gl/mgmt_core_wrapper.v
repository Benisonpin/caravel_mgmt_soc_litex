module mgmt_core_wrapper (VGND,
    VPWR,
    core_clk,
    core_rstn,
    debug_in,
    debug_mode,
    debug_oeb,
    debug_out,
    flash_clk,
    flash_csb,
    flash_io0_di,
    flash_io0_do,
    flash_io0_oeb,
    flash_io1_di,
    flash_io1_do,
    flash_io1_oeb,
    flash_io2_di,
    flash_io2_do,
    flash_io2_oeb,
    flash_io3_di,
    flash_io3_do,
    flash_io3_oeb,
    gpio_in_pad,
    gpio_inenb_pad,
    gpio_mode0_pad,
    gpio_mode1_pad,
    gpio_out_pad,
    gpio_outenb_pad,
    hk_ack_i,
    hk_cyc_o,
    hk_stb_o,
    mprj_ack_i,
    mprj_cyc_o,
    mprj_stb_o,
    mprj_wb_iena,
    mprj_we_o,
    qspi_enabled,
    ser_rx,
    ser_tx,
    spi_csb,
    spi_enabled,
    spi_sck,
    spi_sdi,
    spi_sdo,
    spi_sdoenb,
    sram_ro_clk,
    sram_ro_csb,
    trap,
    uart_enabled,
    hk_dat_i,
    irq,
    la_iena,
    la_input,
    la_oenb,
    la_output,
    mprj_adr_o,
    mprj_dat_i,
    mprj_dat_o,
    mprj_sel_o,
    sram_ro_addr,
    sram_ro_data,
    user_irq_ena);
 input VGND;
 input VPWR;
 input core_clk;
 input core_rstn;
 input debug_in;
 output debug_mode;
 output debug_oeb;
 output debug_out;
 output flash_clk;
 output flash_csb;
 input flash_io0_di;
 output flash_io0_do;
 output flash_io0_oeb;
 input flash_io1_di;
 output flash_io1_do;
 output flash_io1_oeb;
 input flash_io2_di;
 output flash_io2_do;
 output flash_io2_oeb;
 input flash_io3_di;
 output flash_io3_do;
 output flash_io3_oeb;
 input gpio_in_pad;
 output gpio_inenb_pad;
 output gpio_mode0_pad;
 output gpio_mode1_pad;
 output gpio_out_pad;
 output gpio_outenb_pad;
 input hk_ack_i;
 output hk_cyc_o;
 output hk_stb_o;
 input mprj_ack_i;
 output mprj_cyc_o;
 output mprj_stb_o;
 output mprj_wb_iena;
 output mprj_we_o;
 output qspi_enabled;
 input ser_rx;
 output ser_tx;
 output spi_csb;
 output spi_enabled;
 output spi_sck;
 input spi_sdi;
 output spi_sdo;
 output spi_sdoenb;
 input sram_ro_clk;
 input sram_ro_csb;
 output trap;
 output uart_enabled;
 input [31:0] hk_dat_i;
 input [5:0] irq;
 output [127:0] la_iena;
 input [127:0] la_input;
 output [127:0] la_oenb;
 output [127:0] la_output;
 output [31:0] mprj_adr_o;
 input [31:0] mprj_dat_i;
 output [31:0] mprj_dat_o;
 output [3:0] mprj_sel_o;
 input [7:0] sram_ro_addr;
 output [31:0] sram_ro_data;
 output [2:0] user_irq_ena;

 wire \mgmt_soc_dff_A[0] ;
 wire \mgmt_soc_dff_A[1] ;
 wire \mgmt_soc_dff_A[2] ;
 wire \mgmt_soc_dff_A[3] ;
 wire \mgmt_soc_dff_A[4] ;
 wire \mgmt_soc_dff_A[5] ;
 wire \mgmt_soc_dff_A[6] ;
 wire \mgmt_soc_dff_A[7] ;
 wire \mgmt_soc_dff_Di[0] ;
 wire \mgmt_soc_dff_Di[10] ;
 wire \mgmt_soc_dff_Di[11] ;
 wire \mgmt_soc_dff_Di[12] ;
 wire \mgmt_soc_dff_Di[13] ;
 wire \mgmt_soc_dff_Di[14] ;
 wire \mgmt_soc_dff_Di[15] ;
 wire \mgmt_soc_dff_Di[16] ;
 wire \mgmt_soc_dff_Di[17] ;
 wire \mgmt_soc_dff_Di[18] ;
 wire \mgmt_soc_dff_Di[19] ;
 wire \mgmt_soc_dff_Di[1] ;
 wire \mgmt_soc_dff_Di[20] ;
 wire \mgmt_soc_dff_Di[21] ;
 wire \mgmt_soc_dff_Di[22] ;
 wire \mgmt_soc_dff_Di[23] ;
 wire \mgmt_soc_dff_Di[24] ;
 wire \mgmt_soc_dff_Di[25] ;
 wire \mgmt_soc_dff_Di[26] ;
 wire \mgmt_soc_dff_Di[27] ;
 wire \mgmt_soc_dff_Di[28] ;
 wire \mgmt_soc_dff_Di[29] ;
 wire \mgmt_soc_dff_Di[2] ;
 wire \mgmt_soc_dff_Di[30] ;
 wire \mgmt_soc_dff_Di[31] ;
 wire \mgmt_soc_dff_Di[3] ;
 wire \mgmt_soc_dff_Di[4] ;
 wire \mgmt_soc_dff_Di[5] ;
 wire \mgmt_soc_dff_Di[6] ;
 wire \mgmt_soc_dff_Di[7] ;
 wire \mgmt_soc_dff_Di[8] ;
 wire \mgmt_soc_dff_Di[9] ;
 wire \mgmt_soc_dff_Do[0] ;
 wire \mgmt_soc_dff_Do[10] ;
 wire \mgmt_soc_dff_Do[11] ;
 wire \mgmt_soc_dff_Do[12] ;
 wire \mgmt_soc_dff_Do[13] ;
 wire \mgmt_soc_dff_Do[14] ;
 wire \mgmt_soc_dff_Do[15] ;
 wire \mgmt_soc_dff_Do[16] ;
 wire \mgmt_soc_dff_Do[17] ;
 wire \mgmt_soc_dff_Do[18] ;
 wire \mgmt_soc_dff_Do[19] ;
 wire \mgmt_soc_dff_Do[1] ;
 wire \mgmt_soc_dff_Do[20] ;
 wire \mgmt_soc_dff_Do[21] ;
 wire \mgmt_soc_dff_Do[22] ;
 wire \mgmt_soc_dff_Do[23] ;
 wire \mgmt_soc_dff_Do[24] ;
 wire \mgmt_soc_dff_Do[25] ;
 wire \mgmt_soc_dff_Do[26] ;
 wire \mgmt_soc_dff_Do[27] ;
 wire \mgmt_soc_dff_Do[28] ;
 wire \mgmt_soc_dff_Do[29] ;
 wire \mgmt_soc_dff_Do[2] ;
 wire \mgmt_soc_dff_Do[30] ;
 wire \mgmt_soc_dff_Do[31] ;
 wire \mgmt_soc_dff_Do[3] ;
 wire \mgmt_soc_dff_Do[4] ;
 wire \mgmt_soc_dff_Do[5] ;
 wire \mgmt_soc_dff_Do[6] ;
 wire \mgmt_soc_dff_Do[7] ;
 wire \mgmt_soc_dff_Do[8] ;
 wire \mgmt_soc_dff_Do[9] ;
 wire mgmt_soc_dff_EN;
 wire \mgmt_soc_dff_WE[0] ;
 wire \mgmt_soc_dff_WE[1] ;
 wire \mgmt_soc_dff_WE[2] ;
 wire \mgmt_soc_dff_WE[3] ;

 DFFRAM DFFRAM (.CLK(core_clk),
    .EN(mgmt_soc_dff_EN),
    .VGND(VGND),
    .VPWR(VPWR),
    .A({\mgmt_soc_dff_A[7] ,
    \mgmt_soc_dff_A[6] ,
    \mgmt_soc_dff_A[5] ,
    \mgmt_soc_dff_A[4] ,
    \mgmt_soc_dff_A[3] ,
    \mgmt_soc_dff_A[2] ,
    \mgmt_soc_dff_A[1] ,
    \mgmt_soc_dff_A[0] }),
    .Di({\mgmt_soc_dff_Di[31] ,
    \mgmt_soc_dff_Di[30] ,
    \mgmt_soc_dff_Di[29] ,
    \mgmt_soc_dff_Di[28] ,
    \mgmt_soc_dff_Di[27] ,
    \mgmt_soc_dff_Di[26] ,
    \mgmt_soc_dff_Di[25] ,
    \mgmt_soc_dff_Di[24] ,
    \mgmt_soc_dff_Di[23] ,
    \mgmt_soc_dff_Di[22] ,
    \mgmt_soc_dff_Di[21] ,
    \mgmt_soc_dff_Di[20] ,
    \mgmt_soc_dff_Di[19] ,
    \mgmt_soc_dff_Di[18] ,
    \mgmt_soc_dff_Di[17] ,
    \mgmt_soc_dff_Di[16] ,
    \mgmt_soc_dff_Di[15] ,
    \mgmt_soc_dff_Di[14] ,
    \mgmt_soc_dff_Di[13] ,
    \mgmt_soc_dff_Di[12] ,
    \mgmt_soc_dff_Di[11] ,
    \mgmt_soc_dff_Di[10] ,
    \mgmt_soc_dff_Di[9] ,
    \mgmt_soc_dff_Di[8] ,
    \mgmt_soc_dff_Di[7] ,
    \mgmt_soc_dff_Di[6] ,
    \mgmt_soc_dff_Di[5] ,
    \mgmt_soc_dff_Di[4] ,
    \mgmt_soc_dff_Di[3] ,
    \mgmt_soc_dff_Di[2] ,
    \mgmt_soc_dff_Di[1] ,
    \mgmt_soc_dff_Di[0] }),
    .Do({\mgmt_soc_dff_Do[31] ,
    \mgmt_soc_dff_Do[30] ,
    \mgmt_soc_dff_Do[29] ,
    \mgmt_soc_dff_Do[28] ,
    \mgmt_soc_dff_Do[27] ,
    \mgmt_soc_dff_Do[26] ,
    \mgmt_soc_dff_Do[25] ,
    \mgmt_soc_dff_Do[24] ,
    \mgmt_soc_dff_Do[23] ,
    \mgmt_soc_dff_Do[22] ,
    \mgmt_soc_dff_Do[21] ,
    \mgmt_soc_dff_Do[20] ,
    \mgmt_soc_dff_Do[19] ,
    \mgmt_soc_dff_Do[18] ,
    \mgmt_soc_dff_Do[17] ,
    \mgmt_soc_dff_Do[16] ,
    \mgmt_soc_dff_Do[15] ,
    \mgmt_soc_dff_Do[14] ,
    \mgmt_soc_dff_Do[13] ,
    \mgmt_soc_dff_Do[12] ,
    \mgmt_soc_dff_Do[11] ,
    \mgmt_soc_dff_Do[10] ,
    \mgmt_soc_dff_Do[9] ,
    \mgmt_soc_dff_Do[8] ,
    \mgmt_soc_dff_Do[7] ,
    \mgmt_soc_dff_Do[6] ,
    \mgmt_soc_dff_Do[5] ,
    \mgmt_soc_dff_Do[4] ,
    \mgmt_soc_dff_Do[3] ,
    \mgmt_soc_dff_Do[2] ,
    \mgmt_soc_dff_Do[1] ,
    \mgmt_soc_dff_Do[0] }),
    .WE({\mgmt_soc_dff_WE[3] ,
    \mgmt_soc_dff_WE[2] ,
    \mgmt_soc_dff_WE[1] ,
    \mgmt_soc_dff_WE[0] }));
 mgmt_core core (.VGND(VGND),
    .VPWR(VPWR),
    .core_clk(core_clk),
    .core_rstn(core_rstn),
    .debug_in(debug_in),
    .debug_mode(debug_mode),
    .debug_oeb(debug_oeb),
    .debug_out(debug_out),
    .flash_clk(flash_clk),
    .flash_cs_n(flash_csb),
    .flash_io0_di(flash_io0_di),
    .flash_io0_do(flash_io0_do),
    .flash_io0_oeb(flash_io0_oeb),
    .flash_io1_di(flash_io1_di),
    .flash_io1_do(flash_io1_do),
    .flash_io1_oeb(flash_io1_oeb),
    .flash_io2_di(flash_io2_di),
    .flash_io2_do(flash_io2_do),
    .flash_io2_oeb(flash_io2_oeb),
    .flash_io3_di(flash_io3_di),
    .flash_io3_do(flash_io3_do),
    .flash_io3_oeb(flash_io3_oeb),
    .gpio_in_pad(gpio_in_pad),
    .gpio_inenb_pad(gpio_inenb_pad),
    .gpio_mode0_pad(gpio_mode0_pad),
    .gpio_mode1_pad(gpio_mode1_pad),
    .gpio_out_pad(gpio_out_pad),
    .gpio_outenb_pad(gpio_outenb_pad),
    .hk_ack_i(hk_ack_i),
    .hk_cyc_o(hk_cyc_o),
    .hk_stb_o(hk_stb_o),
    .mgmt_soc_dff_EN(mgmt_soc_dff_EN),
    .mprj_ack_i(mprj_ack_i),
    .mprj_cyc_o(mprj_cyc_o),
    .mprj_stb_o(mprj_stb_o),
    .mprj_wb_iena(mprj_wb_iena),
    .mprj_we_o(mprj_we_o),
    .qspi_enabled(qspi_enabled),
    .serial_rx(ser_rx),
    .serial_tx(ser_tx),
    .spi_clk(spi_sck),
    .spi_cs_n(spi_csb),
    .spi_enabled(spi_enabled),
    .spi_miso(spi_sdi),
    .spi_mosi(spi_sdo),
    .spi_sdoenb(spi_sdoenb),
    .sram_ro_clk(sram_ro_clk),
    .sram_ro_csb(sram_ro_csb),
    .trap(trap),
    .uart_enabled(uart_enabled),
    .hk_dat_i({hk_dat_i[31],
    hk_dat_i[30],
    hk_dat_i[29],
    hk_dat_i[28],
    hk_dat_i[27],
    hk_dat_i[26],
    hk_dat_i[25],
    hk_dat_i[24],
    hk_dat_i[23],
    hk_dat_i[22],
    hk_dat_i[21],
    hk_dat_i[20],
    hk_dat_i[19],
    hk_dat_i[18],
    hk_dat_i[17],
    hk_dat_i[16],
    hk_dat_i[15],
    hk_dat_i[14],
    hk_dat_i[13],
    hk_dat_i[12],
    hk_dat_i[11],
    hk_dat_i[10],
    hk_dat_i[9],
    hk_dat_i[8],
    hk_dat_i[7],
    hk_dat_i[6],
    hk_dat_i[5],
    hk_dat_i[4],
    hk_dat_i[3],
    hk_dat_i[2],
    hk_dat_i[1],
    hk_dat_i[0]}),
    .la_iena({la_iena[127],
    la_iena[126],
    la_iena[125],
    la_iena[124],
    la_iena[123],
    la_iena[122],
    la_iena[121],
    la_iena[120],
    la_iena[119],
    la_iena[118],
    la_iena[117],
    la_iena[116],
    la_iena[115],
    la_iena[114],
    la_iena[113],
    la_iena[112],
    la_iena[111],
    la_iena[110],
    la_iena[109],
    la_iena[108],
    la_iena[107],
    la_iena[106],
    la_iena[105],
    la_iena[104],
    la_iena[103],
    la_iena[102],
    la_iena[101],
    la_iena[100],
    la_iena[99],
    la_iena[98],
    la_iena[97],
    la_iena[96],
    la_iena[95],
    la_iena[94],
    la_iena[93],
    la_iena[92],
    la_iena[91],
    la_iena[90],
    la_iena[89],
    la_iena[88],
    la_iena[87],
    la_iena[86],
    la_iena[85],
    la_iena[84],
    la_iena[83],
    la_iena[82],
    la_iena[81],
    la_iena[80],
    la_iena[79],
    la_iena[78],
    la_iena[77],
    la_iena[76],
    la_iena[75],
    la_iena[74],
    la_iena[73],
    la_iena[72],
    la_iena[71],
    la_iena[70],
    la_iena[69],
    la_iena[68],
    la_iena[67],
    la_iena[66],
    la_iena[65],
    la_iena[64],
    la_iena[63],
    la_iena[62],
    la_iena[61],
    la_iena[60],
    la_iena[59],
    la_iena[58],
    la_iena[57],
    la_iena[56],
    la_iena[55],
    la_iena[54],
    la_iena[53],
    la_iena[52],
    la_iena[51],
    la_iena[50],
    la_iena[49],
    la_iena[48],
    la_iena[47],
    la_iena[46],
    la_iena[45],
    la_iena[44],
    la_iena[43],
    la_iena[42],
    la_iena[41],
    la_iena[40],
    la_iena[39],
    la_iena[38],
    la_iena[37],
    la_iena[36],
    la_iena[35],
    la_iena[34],
    la_iena[33],
    la_iena[32],
    la_iena[31],
    la_iena[30],
    la_iena[29],
    la_iena[28],
    la_iena[27],
    la_iena[26],
    la_iena[25],
    la_iena[24],
    la_iena[23],
    la_iena[22],
    la_iena[21],
    la_iena[20],
    la_iena[19],
    la_iena[18],
    la_iena[17],
    la_iena[16],
    la_iena[15],
    la_iena[14],
    la_iena[13],
    la_iena[12],
    la_iena[11],
    la_iena[10],
    la_iena[9],
    la_iena[8],
    la_iena[7],
    la_iena[6],
    la_iena[5],
    la_iena[4],
    la_iena[3],
    la_iena[2],
    la_iena[1],
    la_iena[0]}),
    .la_input({la_input[127],
    la_input[126],
    la_input[125],
    la_input[124],
    la_input[123],
    la_input[122],
    la_input[121],
    la_input[120],
    la_input[119],
    la_input[118],
    la_input[117],
    la_input[116],
    la_input[115],
    la_input[114],
    la_input[113],
    la_input[112],
    la_input[111],
    la_input[110],
    la_input[109],
    la_input[108],
    la_input[107],
    la_input[106],
    la_input[105],
    la_input[104],
    la_input[103],
    la_input[102],
    la_input[101],
    la_input[100],
    la_input[99],
    la_input[98],
    la_input[97],
    la_input[96],
    la_input[95],
    la_input[94],
    la_input[93],
    la_input[92],
    la_input[91],
    la_input[90],
    la_input[89],
    la_input[88],
    la_input[87],
    la_input[86],
    la_input[85],
    la_input[84],
    la_input[83],
    la_input[82],
    la_input[81],
    la_input[80],
    la_input[79],
    la_input[78],
    la_input[77],
    la_input[76],
    la_input[75],
    la_input[74],
    la_input[73],
    la_input[72],
    la_input[71],
    la_input[70],
    la_input[69],
    la_input[68],
    la_input[67],
    la_input[66],
    la_input[65],
    la_input[64],
    la_input[63],
    la_input[62],
    la_input[61],
    la_input[60],
    la_input[59],
    la_input[58],
    la_input[57],
    la_input[56],
    la_input[55],
    la_input[54],
    la_input[53],
    la_input[52],
    la_input[51],
    la_input[50],
    la_input[49],
    la_input[48],
    la_input[47],
    la_input[46],
    la_input[45],
    la_input[44],
    la_input[43],
    la_input[42],
    la_input[41],
    la_input[40],
    la_input[39],
    la_input[38],
    la_input[37],
    la_input[36],
    la_input[35],
    la_input[34],
    la_input[33],
    la_input[32],
    la_input[31],
    la_input[30],
    la_input[29],
    la_input[28],
    la_input[27],
    la_input[26],
    la_input[25],
    la_input[24],
    la_input[23],
    la_input[22],
    la_input[21],
    la_input[20],
    la_input[19],
    la_input[18],
    la_input[17],
    la_input[16],
    la_input[15],
    la_input[14],
    la_input[13],
    la_input[12],
    la_input[11],
    la_input[10],
    la_input[9],
    la_input[8],
    la_input[7],
    la_input[6],
    la_input[5],
    la_input[4],
    la_input[3],
    la_input[2],
    la_input[1],
    la_input[0]}),
    .la_oenb({la_oenb[127],
    la_oenb[126],
    la_oenb[125],
    la_oenb[124],
    la_oenb[123],
    la_oenb[122],
    la_oenb[121],
    la_oenb[120],
    la_oenb[119],
    la_oenb[118],
    la_oenb[117],
    la_oenb[116],
    la_oenb[115],
    la_oenb[114],
    la_oenb[113],
    la_oenb[112],
    la_oenb[111],
    la_oenb[110],
    la_oenb[109],
    la_oenb[108],
    la_oenb[107],
    la_oenb[106],
    la_oenb[105],
    la_oenb[104],
    la_oenb[103],
    la_oenb[102],
    la_oenb[101],
    la_oenb[100],
    la_oenb[99],
    la_oenb[98],
    la_oenb[97],
    la_oenb[96],
    la_oenb[95],
    la_oenb[94],
    la_oenb[93],
    la_oenb[92],
    la_oenb[91],
    la_oenb[90],
    la_oenb[89],
    la_oenb[88],
    la_oenb[87],
    la_oenb[86],
    la_oenb[85],
    la_oenb[84],
    la_oenb[83],
    la_oenb[82],
    la_oenb[81],
    la_oenb[80],
    la_oenb[79],
    la_oenb[78],
    la_oenb[77],
    la_oenb[76],
    la_oenb[75],
    la_oenb[74],
    la_oenb[73],
    la_oenb[72],
    la_oenb[71],
    la_oenb[70],
    la_oenb[69],
    la_oenb[68],
    la_oenb[67],
    la_oenb[66],
    la_oenb[65],
    la_oenb[64],
    la_oenb[63],
    la_oenb[62],
    la_oenb[61],
    la_oenb[60],
    la_oenb[59],
    la_oenb[58],
    la_oenb[57],
    la_oenb[56],
    la_oenb[55],
    la_oenb[54],
    la_oenb[53],
    la_oenb[52],
    la_oenb[51],
    la_oenb[50],
    la_oenb[49],
    la_oenb[48],
    la_oenb[47],
    la_oenb[46],
    la_oenb[45],
    la_oenb[44],
    la_oenb[43],
    la_oenb[42],
    la_oenb[41],
    la_oenb[40],
    la_oenb[39],
    la_oenb[38],
    la_oenb[37],
    la_oenb[36],
    la_oenb[35],
    la_oenb[34],
    la_oenb[33],
    la_oenb[32],
    la_oenb[31],
    la_oenb[30],
    la_oenb[29],
    la_oenb[28],
    la_oenb[27],
    la_oenb[26],
    la_oenb[25],
    la_oenb[24],
    la_oenb[23],
    la_oenb[22],
    la_oenb[21],
    la_oenb[20],
    la_oenb[19],
    la_oenb[18],
    la_oenb[17],
    la_oenb[16],
    la_oenb[15],
    la_oenb[14],
    la_oenb[13],
    la_oenb[12],
    la_oenb[11],
    la_oenb[10],
    la_oenb[9],
    la_oenb[8],
    la_oenb[7],
    la_oenb[6],
    la_oenb[5],
    la_oenb[4],
    la_oenb[3],
    la_oenb[2],
    la_oenb[1],
    la_oenb[0]}),
    .la_output({la_output[127],
    la_output[126],
    la_output[125],
    la_output[124],
    la_output[123],
    la_output[122],
    la_output[121],
    la_output[120],
    la_output[119],
    la_output[118],
    la_output[117],
    la_output[116],
    la_output[115],
    la_output[114],
    la_output[113],
    la_output[112],
    la_output[111],
    la_output[110],
    la_output[109],
    la_output[108],
    la_output[107],
    la_output[106],
    la_output[105],
    la_output[104],
    la_output[103],
    la_output[102],
    la_output[101],
    la_output[100],
    la_output[99],
    la_output[98],
    la_output[97],
    la_output[96],
    la_output[95],
    la_output[94],
    la_output[93],
    la_output[92],
    la_output[91],
    la_output[90],
    la_output[89],
    la_output[88],
    la_output[87],
    la_output[86],
    la_output[85],
    la_output[84],
    la_output[83],
    la_output[82],
    la_output[81],
    la_output[80],
    la_output[79],
    la_output[78],
    la_output[77],
    la_output[76],
    la_output[75],
    la_output[74],
    la_output[73],
    la_output[72],
    la_output[71],
    la_output[70],
    la_output[69],
    la_output[68],
    la_output[67],
    la_output[66],
    la_output[65],
    la_output[64],
    la_output[63],
    la_output[62],
    la_output[61],
    la_output[60],
    la_output[59],
    la_output[58],
    la_output[57],
    la_output[56],
    la_output[55],
    la_output[54],
    la_output[53],
    la_output[52],
    la_output[51],
    la_output[50],
    la_output[49],
    la_output[48],
    la_output[47],
    la_output[46],
    la_output[45],
    la_output[44],
    la_output[43],
    la_output[42],
    la_output[41],
    la_output[40],
    la_output[39],
    la_output[38],
    la_output[37],
    la_output[36],
    la_output[35],
    la_output[34],
    la_output[33],
    la_output[32],
    la_output[31],
    la_output[30],
    la_output[29],
    la_output[28],
    la_output[27],
    la_output[26],
    la_output[25],
    la_output[24],
    la_output[23],
    la_output[22],
    la_output[21],
    la_output[20],
    la_output[19],
    la_output[18],
    la_output[17],
    la_output[16],
    la_output[15],
    la_output[14],
    la_output[13],
    la_output[12],
    la_output[11],
    la_output[10],
    la_output[9],
    la_output[8],
    la_output[7],
    la_output[6],
    la_output[5],
    la_output[4],
    la_output[3],
    la_output[2],
    la_output[1],
    la_output[0]}),
    .mgmt_soc_dff_A({\mgmt_soc_dff_A[7] ,
    \mgmt_soc_dff_A[6] ,
    \mgmt_soc_dff_A[5] ,
    \mgmt_soc_dff_A[4] ,
    \mgmt_soc_dff_A[3] ,
    \mgmt_soc_dff_A[2] ,
    \mgmt_soc_dff_A[1] ,
    \mgmt_soc_dff_A[0] }),
    .mgmt_soc_dff_Di({\mgmt_soc_dff_Di[31] ,
    \mgmt_soc_dff_Di[30] ,
    \mgmt_soc_dff_Di[29] ,
    \mgmt_soc_dff_Di[28] ,
    \mgmt_soc_dff_Di[27] ,
    \mgmt_soc_dff_Di[26] ,
    \mgmt_soc_dff_Di[25] ,
    \mgmt_soc_dff_Di[24] ,
    \mgmt_soc_dff_Di[23] ,
    \mgmt_soc_dff_Di[22] ,
    \mgmt_soc_dff_Di[21] ,
    \mgmt_soc_dff_Di[20] ,
    \mgmt_soc_dff_Di[19] ,
    \mgmt_soc_dff_Di[18] ,
    \mgmt_soc_dff_Di[17] ,
    \mgmt_soc_dff_Di[16] ,
    \mgmt_soc_dff_Di[15] ,
    \mgmt_soc_dff_Di[14] ,
    \mgmt_soc_dff_Di[13] ,
    \mgmt_soc_dff_Di[12] ,
    \mgmt_soc_dff_Di[11] ,
    \mgmt_soc_dff_Di[10] ,
    \mgmt_soc_dff_Di[9] ,
    \mgmt_soc_dff_Di[8] ,
    \mgmt_soc_dff_Di[7] ,
    \mgmt_soc_dff_Di[6] ,
    \mgmt_soc_dff_Di[5] ,
    \mgmt_soc_dff_Di[4] ,
    \mgmt_soc_dff_Di[3] ,
    \mgmt_soc_dff_Di[2] ,
    \mgmt_soc_dff_Di[1] ,
    \mgmt_soc_dff_Di[0] }),
    .mgmt_soc_dff_Do({\mgmt_soc_dff_Do[31] ,
    \mgmt_soc_dff_Do[30] ,
    \mgmt_soc_dff_Do[29] ,
    \mgmt_soc_dff_Do[28] ,
    \mgmt_soc_dff_Do[27] ,
    \mgmt_soc_dff_Do[26] ,
    \mgmt_soc_dff_Do[25] ,
    \mgmt_soc_dff_Do[24] ,
    \mgmt_soc_dff_Do[23] ,
    \mgmt_soc_dff_Do[22] ,
    \mgmt_soc_dff_Do[21] ,
    \mgmt_soc_dff_Do[20] ,
    \mgmt_soc_dff_Do[19] ,
    \mgmt_soc_dff_Do[18] ,
    \mgmt_soc_dff_Do[17] ,
    \mgmt_soc_dff_Do[16] ,
    \mgmt_soc_dff_Do[15] ,
    \mgmt_soc_dff_Do[14] ,
    \mgmt_soc_dff_Do[13] ,
    \mgmt_soc_dff_Do[12] ,
    \mgmt_soc_dff_Do[11] ,
    \mgmt_soc_dff_Do[10] ,
    \mgmt_soc_dff_Do[9] ,
    \mgmt_soc_dff_Do[8] ,
    \mgmt_soc_dff_Do[7] ,
    \mgmt_soc_dff_Do[6] ,
    \mgmt_soc_dff_Do[5] ,
    \mgmt_soc_dff_Do[4] ,
    \mgmt_soc_dff_Do[3] ,
    \mgmt_soc_dff_Do[2] ,
    \mgmt_soc_dff_Do[1] ,
    \mgmt_soc_dff_Do[0] }),
    .mgmt_soc_dff_WE({\mgmt_soc_dff_WE[3] ,
    \mgmt_soc_dff_WE[2] ,
    \mgmt_soc_dff_WE[1] ,
    \mgmt_soc_dff_WE[0] }),
    .mprj_adr_o({mprj_adr_o[31],
    mprj_adr_o[30],
    mprj_adr_o[29],
    mprj_adr_o[28],
    mprj_adr_o[27],
    mprj_adr_o[26],
    mprj_adr_o[25],
    mprj_adr_o[24],
    mprj_adr_o[23],
    mprj_adr_o[22],
    mprj_adr_o[21],
    mprj_adr_o[20],
    mprj_adr_o[19],
    mprj_adr_o[18],
    mprj_adr_o[17],
    mprj_adr_o[16],
    mprj_adr_o[15],
    mprj_adr_o[14],
    mprj_adr_o[13],
    mprj_adr_o[12],
    mprj_adr_o[11],
    mprj_adr_o[10],
    mprj_adr_o[9],
    mprj_adr_o[8],
    mprj_adr_o[7],
    mprj_adr_o[6],
    mprj_adr_o[5],
    mprj_adr_o[4],
    mprj_adr_o[3],
    mprj_adr_o[2],
    mprj_adr_o[1],
    mprj_adr_o[0]}),
    .mprj_dat_i({mprj_dat_i[31],
    mprj_dat_i[30],
    mprj_dat_i[29],
    mprj_dat_i[28],
    mprj_dat_i[27],
    mprj_dat_i[26],
    mprj_dat_i[25],
    mprj_dat_i[24],
    mprj_dat_i[23],
    mprj_dat_i[22],
    mprj_dat_i[21],
    mprj_dat_i[20],
    mprj_dat_i[19],
    mprj_dat_i[18],
    mprj_dat_i[17],
    mprj_dat_i[16],
    mprj_dat_i[15],
    mprj_dat_i[14],
    mprj_dat_i[13],
    mprj_dat_i[12],
    mprj_dat_i[11],
    mprj_dat_i[10],
    mprj_dat_i[9],
    mprj_dat_i[8],
    mprj_dat_i[7],
    mprj_dat_i[6],
    mprj_dat_i[5],
    mprj_dat_i[4],
    mprj_dat_i[3],
    mprj_dat_i[2],
    mprj_dat_i[1],
    mprj_dat_i[0]}),
    .mprj_dat_o({mprj_dat_o[31],
    mprj_dat_o[30],
    mprj_dat_o[29],
    mprj_dat_o[28],
    mprj_dat_o[27],
    mprj_dat_o[26],
    mprj_dat_o[25],
    mprj_dat_o[24],
    mprj_dat_o[23],
    mprj_dat_o[22],
    mprj_dat_o[21],
    mprj_dat_o[20],
    mprj_dat_o[19],
    mprj_dat_o[18],
    mprj_dat_o[17],
    mprj_dat_o[16],
    mprj_dat_o[15],
    mprj_dat_o[14],
    mprj_dat_o[13],
    mprj_dat_o[12],
    mprj_dat_o[11],
    mprj_dat_o[10],
    mprj_dat_o[9],
    mprj_dat_o[8],
    mprj_dat_o[7],
    mprj_dat_o[6],
    mprj_dat_o[5],
    mprj_dat_o[4],
    mprj_dat_o[3],
    mprj_dat_o[2],
    mprj_dat_o[1],
    mprj_dat_o[0]}),
    .mprj_sel_o({mprj_sel_o[3],
    mprj_sel_o[2],
    mprj_sel_o[1],
    mprj_sel_o[0]}),
    .sram_ro_addr({sram_ro_addr[7],
    sram_ro_addr[6],
    sram_ro_addr[5],
    sram_ro_addr[4],
    sram_ro_addr[3],
    sram_ro_addr[2],
    sram_ro_addr[1],
    sram_ro_addr[0]}),
    .sram_ro_data({sram_ro_data[31],
    sram_ro_data[30],
    sram_ro_data[29],
    sram_ro_data[28],
    sram_ro_data[27],
    sram_ro_data[26],
    sram_ro_data[25],
    sram_ro_data[24],
    sram_ro_data[23],
    sram_ro_data[22],
    sram_ro_data[21],
    sram_ro_data[20],
    sram_ro_data[19],
    sram_ro_data[18],
    sram_ro_data[17],
    sram_ro_data[16],
    sram_ro_data[15],
    sram_ro_data[14],
    sram_ro_data[13],
    sram_ro_data[12],
    sram_ro_data[11],
    sram_ro_data[10],
    sram_ro_data[9],
    sram_ro_data[8],
    sram_ro_data[7],
    sram_ro_data[6],
    sram_ro_data[5],
    sram_ro_data[4],
    sram_ro_data[3],
    sram_ro_data[2],
    sram_ro_data[1],
    sram_ro_data[0]}),
    .user_irq({irq[5],
    irq[4],
    irq[3],
    irq[2],
    irq[1],
    irq[0]}),
    .user_irq_ena({user_irq_ena[2],
    user_irq_ena[1],
    user_irq_ena[0]}));
endmodule
