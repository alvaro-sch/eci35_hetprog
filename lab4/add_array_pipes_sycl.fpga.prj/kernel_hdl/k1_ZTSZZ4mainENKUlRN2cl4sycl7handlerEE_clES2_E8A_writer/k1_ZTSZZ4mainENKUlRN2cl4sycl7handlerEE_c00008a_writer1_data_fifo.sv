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

// SystemVerilog created from i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer1_data_fifo
// Created for function/kernel k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_c00008a_writer1_data_fifo (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [0:0] in_i_data_0_tpl,
    input wire [63:0] in_i_data_1_tpl,
    input wire [0:0] in_i_data_2_tpl,
    input wire [0:0] in_i_data_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_data_0_tpl,
    output wire [63:0] out_o_data_1_tpl,
    output wire [0:0] out_o_data_2_tpl,
    output wire [0:0] out_o_data_3_tpl,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [0:0] adapt_scalar_trunc17_in;
    wire [0:0] adapt_scalar_trunc17_q;
    wire [0:0] adapt_scalar_trunc19_in;
    wire [0:0] adapt_scalar_trunc19_q;
    wire [47:0] c_i48_010_q;
    wire [55:0] c_i56_05_q;
    wire [6:0] c_i7_04_q;
    wire [191:0] dsdk_ip_adapt_bitjoin1_q;
    wire [7:0] element_extension3_q;
    wire [7:0] element_extension6_q;
    wire [7:0] element_extension8_q;
    wire [191:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_valid_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_almost_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_almost_empty_bitsignaltemp;
    wire [191:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_data;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_empty;
    wire i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_empty_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_stall;
    wire i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_stall_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_valid;
    wire i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_valid_bitsignaltemp;
    wire [0:0] ip_dsdk_adapt_bitselect12_b;
    wire [63:0] ip_dsdk_adapt_bitselect14_b;
    wire [0:0] ip_dsdk_adapt_bitselect16_b;
    wire [0:0] ip_dsdk_adapt_bitselect18_b;


    // c_i48_010(CONSTANT,5)
    assign c_i48_010_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // c_i7_04(CONSTANT,7)
    assign c_i7_04_q = $unsigned(7'b0000000);

    // element_extension8(BITJOIN,13)
    assign element_extension8_q = {c_i7_04_q, in_i_data_3_tpl};

    // element_extension6(BITJOIN,12)
    assign element_extension6_q = {c_i7_04_q, in_i_data_2_tpl};

    // c_i56_05(CONSTANT,6)
    assign c_i56_05_q = $unsigned(56'b00000000000000000000000000000000000000000000000000000000);

    // element_extension3(BITJOIN,11)
    assign element_extension3_q = {c_i7_04_q, in_i_data_0_tpl};

    // dsdk_ip_adapt_bitjoin1(BITJOIN,10)
    assign dsdk_ip_adapt_bitjoin1_q = {c_i48_010_q, element_extension8_q, element_extension6_q, in_i_data_1_tpl, c_i56_05_q, element_extension3_q};

    // i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0(EXTIFACE,14)
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_data = dsdk_ip_adapt_bitjoin1_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_stall = in_i_stall;
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_valid = in_i_valid;
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_stall_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_stall[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_valid_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_valid[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_almost_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_almost_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_empty[0] = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_empty_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_stall[0] = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_stall_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_valid[0] = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_valid_bitsignaltemp;
    hld_fifo #(
        .ALMOST_EMPTY_CUTOFF(7),
        .DEPTH(512),
        .STYLE("ms"),
        .ASYNC_RESET(0),
        .NEVER_OVERFLOWS(1),
        .RESET_EXTERNALLY_HELD(1),
        .STALL_IN_EARLINESS(3),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1),
        .WIDTH(192)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0 (
        .i_data(dsdk_ip_adapt_bitjoin1_q),
        .i_stall(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_stall_bitsignaltemp),
        .i_valid(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_i_valid_bitsignaltemp),
        .o_almost_empty(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_almost_empty_bitsignaltemp),
        .o_data(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_data),
        .o_empty(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_empty_bitsignaltemp),
        .o_stall(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_stall_bitsignaltemp),
        .o_valid(i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,21)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_stall;

    // ip_dsdk_adapt_bitselect18(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect18_b = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_data[136:136];

    // adapt_scalar_trunc19(ROUND,4)
    assign adapt_scalar_trunc19_in = ip_dsdk_adapt_bitselect18_b;
    assign adapt_scalar_trunc19_q = adapt_scalar_trunc19_in[0:0];

    // ip_dsdk_adapt_bitselect16(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect16_b = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_data[128:128];

    // adapt_scalar_trunc17(ROUND,3)
    assign adapt_scalar_trunc17_in = ip_dsdk_adapt_bitselect16_b;
    assign adapt_scalar_trunc17_q = adapt_scalar_trunc17_in[0:0];

    // ip_dsdk_adapt_bitselect14(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect14_b = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_data[127:64];

    // ip_dsdk_adapt_bitselect12(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect12_b = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_data[0:0];

    // adapt_scalar_trunc13(ROUND,2)
    assign adapt_scalar_trunc13_in = ip_dsdk_adapt_bitselect12_b;
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,23)@20000030
    assign out_o_almost_empty = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_almost_empty;
    assign out_o_data_0_tpl = adapt_scalar_trunc13_q;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect14_b;
    assign out_o_data_2_tpl = adapt_scalar_trunc17_q;
    assign out_o_data_3_tpl = adapt_scalar_trunc19_q;
    assign out_o_empty = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_empty;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writers_c0_exit_k1_ztszz4mainenkulrn2cl4sycl7handleree_cles2_e8a_writer0_o_valid;

endmodule
