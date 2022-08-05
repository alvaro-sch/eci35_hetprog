// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 2022.2 (Release Build #133.4)
// 
// Legal Notice: Copyright 2022 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from i_sfc_logic_s_c1_in_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adders_c1_enter_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder0
// Created for function/kernel k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_000beree1_cles2_e5adder0 (
    output wire [0:0] out_c1_exi1_0_tpl,
    output wire [31:0] out_c1_exi1_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder2,
    input wire [0:0] in_c1_eni2_0_tpl,
    input wire [31:0] in_c1_eni2_1_tpl,
    input wire [31:0] in_c1_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] i_unnamed_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder2_out_primWireOut;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist0_sync_together7_aunroll_x_in_i_valid_5_delay_3;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist0_sync_together7_aunroll_x_in_i_valid_5(DELAY,7)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_delay_0 <= '0;
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_delay_1 <= redist0_sync_together7_aunroll_x_in_i_valid_5_delay_0;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_delay_2 <= '0;
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_delay_2 <= redist0_sync_together7_aunroll_x_in_i_valid_5_delay_1;
        end
    end
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_delay_3 <= redist0_sync_together7_aunroll_x_in_i_valid_5_delay_2;
        end
    end
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist0_sync_together7_aunroll_x_in_i_valid_5_q <= redist0_sync_together7_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // i_unnamed_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder2(BLACKBOX,3)@59
    // out out_primWireOut@64
    k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_00003fp0060o3fd0060oqf0z thei_unnamed_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder2 (
        .in_0(in_c1_eni2_1_tpl),
        .in_1(in_c1_eni2_2_tpl),
        .out_primWireOut(i_unnamed_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder2_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@64
    assign out_c1_exi1_0_tpl = GND_q;
    assign out_c1_exi1_1_tpl = i_unnamed_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder2_out_primWireOut;
    assign out_o_valid = redist0_sync_together7_aunroll_x_in_i_valid_5_q;
    assign out_unnamed_k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder2 = GND_q;

endmodule
