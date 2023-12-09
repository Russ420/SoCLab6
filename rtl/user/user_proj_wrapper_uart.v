// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

//`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_project_wrapper
 *
 * This wrapper enumerates all of the pins available to the
 * user for the user project.
 *
 * An example user project is provided in this wrapper.  The
 * example should be removed and replaced with the actual
 * user project.
 *
 *-------------------------------------------------------------
 */

module user_project_wrapper #(
    parameter BITS = 32
) (
`ifdef USE_POWER_PINS
    inout vdda1,	// User area 1 3.3V supply
    inout vdda2,	// User area 2 3.3V supply
    inout vssa1,	// User area 1 analog ground
    inout vssa2,	// User area 2 analog ground
    inout vccd1,	// User area 1 1.8V supply
    inout vccd2,	// User area 2 1.8v supply
    inout vssd1,	// User area 1 digital ground
    inout vssd2,	// User area 2 digital ground
`endif

    // Wishbone Slave ports (WB MI A)
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output reg wbs_ack_o,
    output reg [31:0] wbs_dat_o,
    //output wbs_ack_o,
    //output [31:0] wbs_dat_o,

    // Logic Analyzer Signals
    input  [127:0] la_data_in,
    output [127:0] la_data_out,
    input  [127:0] la_oenb,

    // IOs
    input  [`MPRJ_IO_PADS-1:0] io_in,
    output [`MPRJ_IO_PADS-1:0] io_out,
    output [`MPRJ_IO_PADS-1:0] io_oeb,
    //output reg[`MPRJ_IO_PADS-1:0] io_out,
    //output reg[`MPRJ_IO_PADS-1:0] io_oeb,

    // Analog (direct connection to GPIO pad---use with caution)
    // Note that analog I/O is not available on the 7 lowest-numbered
    // GPIO pads, and so the analog_io indexing is offset from the
    // GPIO indexing by 7 (also upper 2 GPIOs do not have analog_io).
    inout [`MPRJ_IO_PADS-10:0] analog_io,

    // Independent clock (on independent integer divider)
    input   user_clock2,

    // User maskable interrupt signals
    output [2:0] user_irq
    //output reg[2:0] user_irq
);

wire [`MPRJ_IO_PADS-1:0]io_out_uart;
wire [`MPRJ_IO_PADS-1:0]io_oeb_uart;
wire [31:0]wbs_dat_o_uart;
wire wbs_ack_o_uart;
wire [2:0]user_irq_uart;

wire [`MPRJ_IO_PADS-1:0]io_out_mprj;
wire [`MPRJ_IO_PADS-1:0]io_oeb_mprj;
wire [31:0]wbs_dat_o_mprj;
wire wbs_ack_o_mprj;
wire [2:0]user_irq_mprj;

// reg flag;

// always @(posedge wb_clk_i or negedge wb_rst_i)begin
//     if(!wb_rst_i) begin
//         flag <= 1'd0;
//     end else if(wbs_cyc_i && wbs_stb_i && wbs_we_i && wbs_dat_i[31-:16] == 16'hAB51) begin
//         flag <= 1'd1;
//         $display("flag_one: %d", $time);
//     end
// end

// DEBUG

/*--------------------------------------*/
/* Assign mux out   */
/*--------------------------------------*/
// reg [2:0]uart_count;

//always @(wbs_cyc_i & wbs_stb_i & wbs_we_i)begin
//    $display("IO: %x",wbs_cyc_i & wbs_stb_i & wbs_we_i);
//end

// reg io6_past,io5_past;
reg flag,flag2;

// always @(posedge wb_clk_i)begin
//     if(wb_rst_i) begin
//         io6_past <= 0;
//         io5_past <= 0;
//     end
//     else begin
//         io6_past <= io_out_uart[6];
//         io5_past <= io_in[5];
//     end
// end

// always @(posedge wb_clk_i)begin
//     if(wb_rst_i) begin
//         flag <= 0;
//         flag2 <= 0;
//     end
//     else
//         if(user_irq_uart[0]) begin
//             flag <= flag;
//             flag2 <= 0;
//         end
//         else if(flag == 0 && io5_past == 1'b0 && io_in[5] == 1'b1) begin
//             flag <= 1;
//             flag2 <= 1;
//         end
//         else if(flag2 == 0 && io6_past == 1'b0 && io_out_uart[6] == 1'b1) begin
//             flag <= 0;
//             flag2 <= 0;
//         end
//         else begin
//             flag <= flag;
//             flag2 <= flag2;
//         end
// end


wire tx_finish;

reg io_in5_buf;
reg io_in5_buf2;
wire io_in5_neg;
reg inflag;

always @(posedge wb_clk_i or posedge wb_rst_i)begin
    if(wb_rst_i)begin
        io_in5_buf <= 1'b0;
        io_in5_buf2 <= 1'b0;
    end else begin
        io_in5_buf <= io_in[5];
        io_in5_buf2 <= io_in5_buf;
    end
end

assign io_in5_neg = (~io_in5_buf) & io_in5_buf2;

always @(posedge wb_clk_i or posedge wb_rst_i)begin
    if(wb_rst_i)begin
        inflag <= 1'b0;
    end else begin
        if(io_in5_neg)begin
            inflag <= 1'b1;
        // todo
        end else if(tx_finish)begin
            inflag <= 1'b0;
        end else begin
            inflag <= inflag;
        end
    end
end



//always @(posedge wb_clk_i)begin
//    if(wb_rst_i) begin
//        flag <= 0;
//    end
//    else
//        if(wbs_adr_i[31:16] == 16'h3000) begin
//            flag <= 1;
//        end
//        else if(wbs_adr_i[31:16] == 16'h3800) begin
//            flag <= 0;
//        end
//        else begin
//            flag <= flag;
//        end
//end
//
// always @(posedge wb_clk_i)begin
//     if(wb_rst_i) begin
//         flag <= 0;
//         uart_count <= 0;
//     end
//     else
//         if(uart_count == 3'b111) begin
//             // flag <= 0;
//             uart_count <= 0;
//         end
//         else if(flag == 1) begin
//             uart_count <= uart_count + 1;
//         end
//         else if(io_in[5] == 1'b1)
//             flag <= 1;
//         else begin
//             flag <= flag;
//             uart_count <= uart_count;
//         end
// end

// always @(flag) $display("flag: %x",flag);
// always @(flag2) $display("flag2: %x",flag2);
// always @(io_out_uart[6]) $display("io_out_uart[6]: %x",io_out_uart[6]);
// always @(io_in[5]) $display("io_in[5]: %x",io_in[5]);
// always @(user_irq_uart[0]) $display("user_irq_uart[0]: %x",user_irq_uart[0]);
// always @(wbs_adr_i[31:16]) if(wbs_adr_i[31:16] == 16'h3000)$display("wbs_adr_i[31:16]: %x",wbs_adr_i[31:16]);

always @(*)begin
    if(inflag && wbs_ack_o_uart)begin
        wbs_dat_o = wbs_dat_o_uart;
        wbs_ack_o = wbs_ack_o_uart;
        //io_out = io_out_uart;
        //io_oeb = io_oeb_uart;
        //user_irq = user_irq_uart;
    end else begin
        wbs_dat_o = wbs_dat_o_mprj;
        wbs_ack_o = wbs_ack_o_mprj;
        //io_out = io_out_mprj;
        //io_oeb = io_oeb_mprj;
        //user_irq = user_irq_mprj;
    end
end

assign io_out = io_out_uart;
assign io_oeb = io_oeb_uart;
assign user_irq = user_irq_uart;



/*--------------------------------------*/
/* User project is instantiated  here   */
/*--------------------------------------*/
user_proj_example mprj (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
//
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),
//
    // MGMT SoC Wishbone Slave
//
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_stb_i(wbs_stb_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_ack_o(wbs_ack_o_mprj),
    .wbs_dat_o(wbs_dat_o_mprj),
//
    // Logic Analyzer
//
    .la_data_in(la_data_in),
    .la_data_out(la_data_out),
    .la_oenb (la_oenb),
//
    // IO Pads
//
    .io_in (io_in),
    .io_out(io_out_mprj),
    .io_oeb(io_oeb_mprj),
//
    // IRQ
    .irq(user_irq_mprj)
);

uart uart (
`ifdef USE_POWER_PINS
	.vccd1(vccd1),	// User area 1 1.8V power
	.vssd1(vssd1),	// User area 1 digital ground
`endif
    .wb_clk_i(wb_clk_i),
    .wb_rst_i(wb_rst_i),

    // MGMT SoC Wishbone Slave

    .wbs_stb_i(wbs_stb_i),
    .wbs_cyc_i(wbs_cyc_i),
    .wbs_we_i(wbs_we_i),
    .wbs_sel_i(wbs_sel_i),
    .wbs_dat_i(wbs_dat_i),
    .wbs_adr_i(wbs_adr_i),
    .wbs_ack_o(wbs_ack_o_uart),
    .wbs_dat_o(wbs_dat_o_uart),
    //.wbs_ack_o(wbs_ack_o),
    //.wbs_dat_o(wbs_dat_o),

    // IO ports
    .io_in  (io_in      ),
    .io_out (io_out_uart     ),
    .io_oeb (io_oeb_uart     ),
    //.io_out (io_out     ),
    //.io_oeb (io_oeb     ),

    // irq
    .user_irq (user_irq_uart),

    //user-define
    .tx_finish(tx_finish)
);

endmodule	// user_project_wrapper

//`default_nettype wire

