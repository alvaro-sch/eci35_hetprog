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

// SystemVerilog created from bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2
// Created for function/kernel k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000_clES2_E8B_writer_B2 (
    output wire [0:0] out_feedback_almost_empty_out_0,
    output wire [0:0] out_feedback_data_out_0,
    output wire [0:0] out_feedback_empty_out_0,
    input wire [0:0] in_feedback_stall_in_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch_out_stall_out;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch_out_valid_out_0;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_almost_empty_out;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_empty_out;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_stall_out_0;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_valid_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_almost_empty_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_empty_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_almost_empty_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_data_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_empty_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_stall_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch(BLACKBOX,2)
    k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000E8B_writer_B2_branch theZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch (
        .in_almost_empty_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_almost_empty_out),
        .in_empty_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_valid_out),
        .out_stall_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch_out_stall_out),
        .out_valid_out_0(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge(BLACKBOX,3)
    k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000_E8B_writer_B2_merge theZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge (
        .in_stall_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_almost_empty_out),
        .out_empty_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_empty_out),
        .out_stall_out_0(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_stall_out_0),
        .out_valid_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region(BLACKBOX,4)
    k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000iter_B2_stall_region thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region (
        .in_almost_empty_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_almost_empty_out),
        .in_empty_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_empty_out),
        .in_feedback_stall_in_0(in_feedback_stall_in_0),
        .in_stall_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch_out_stall_out),
        .in_valid_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_valid_out),
        .out_almost_empty_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_almost_empty_out),
        .out_empty_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_empty_out),
        .out_feedback_almost_empty_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_almost_empty_out_0),
        .out_feedback_data_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_data_out_0),
        .out_feedback_empty_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_empty_out_0),
        .out_stall_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_stall_out),
        .out_valid_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_almost_empty_out_0_sync(GPOUT,5)
    assign out_feedback_almost_empty_out_0 = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_almost_empty_out_0;

    // feedback_data_out_0_sync(GPOUT,6)
    assign out_feedback_data_out_0 = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_data_out_0;

    // feedback_empty_out_0_sync(GPOUT,7)
    assign out_feedback_empty_out_0 = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_stall_region_out_feedback_empty_out_0;

    // out_stall_out_0(GPOUT,11)
    assign out_stall_out_0 = ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,12)
    assign out_valid_out_0 = ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,13)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
