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

// SystemVerilog created from flt_i_sfc_logic_s_c1_in_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adders_c1_enter_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder0_addBlock_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_0_0_addFpArchSoleDatapath_correctRounding_440b0zijopokoqowo3oyo5ozo0u6ucu8ueu9ufuluru01c111p1g10060i060u060j060k060w060f060x06046605660ic601c602c60kc60qi60ri60bi60ooc09o60ro604oi0iu601u60dui0xu60gu60suc05u60hu603160t1600uuqx5bgyvlkx5bgyvlkx5bgsvcqp0060o3fp0060o3fp0060o3fd0060oqf0z
// Created for function/kernel k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_00003fp0060o3fd0060oqf0z (
    input wire [31:0] in_0,
    input wire [31:0] in_1,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire block_rsrvd_fix_impl_reset0;
    wire block_rsrvd_fix_impl_ena0;
    wire [31:0] block_rsrvd_fix_impl_ax0;
    wire [31:0] block_rsrvd_fix_impl_ay0;
    wire [31:0] block_rsrvd_fix_impl_q0;
    (* preserve_syn_only *) reg [31:0] block_rsrvd_fix_b_q;
    (* preserve_syn_only *) reg [31:0] block_rsrvd_fix_a_q;
    (* preserve_syn_only *) reg [31:0] block_rsrvd_fix_q_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // block_rsrvd_fix_a(REG,8)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            block_rsrvd_fix_a_q <= $unsigned(in_0);
        end
    end

    // block_rsrvd_fix_b(REG,7)@0 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            block_rsrvd_fix_b_q <= $unsigned(in_1);
        end
    end

    // block_rsrvd_fix_impl(FPCOLUMN,6)@1 + 3
    assign block_rsrvd_fix_impl_ax0 = $unsigned(block_rsrvd_fix_b_q);
    assign block_rsrvd_fix_impl_ay0 = block_rsrvd_fix_a_q;
    assign block_rsrvd_fix_impl_reset0 = 1'b0;
    assign block_rsrvd_fix_impl_ena0 = 1'b1;
    fourteennm_fp_mac #(
        .operation_mode("sp_add"),
        .ax_clock("0"),
        .ay_clock("0"),
        .adder_input_clock("0"),
        .output_clock("0"),
        .clear_type("none")
    ) block_rsrvd_fix_impl_DSP0 (
        .clk({1'b0,1'b0,clock}),
        .ena({ 1'b0, 1'b0, block_rsrvd_fix_impl_ena0 }),
        .clr({ block_rsrvd_fix_impl_reset0, block_rsrvd_fix_impl_reset0 }),
        .ax(block_rsrvd_fix_impl_ax0),
        .ay(block_rsrvd_fix_impl_ay0),
        .resulta(block_rsrvd_fix_impl_q0),
        .accumulate(),
        .az(),
        .chainin(),
        .chainout(),
        .dfxlfsrena(),
        .dfxmisrena(),
        .adder_inexact(),
        .adder_invalid(),
        .adder_overflow(),
        .adder_underflow(),
        .mult_inexact(),
        .mult_invalid(),
        .mult_overflow(),
        .mult_underflow(),
        .dftout()
    );

    // block_rsrvd_fix_q(REG,10)@4 + 1
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            block_rsrvd_fix_q_q <= $unsigned(block_rsrvd_fix_impl_q0);
        end
    end

    // out_primWireOut(GPOUT,5)@5
    assign out_primWireOut = block_rsrvd_fix_q_q;

endmodule
