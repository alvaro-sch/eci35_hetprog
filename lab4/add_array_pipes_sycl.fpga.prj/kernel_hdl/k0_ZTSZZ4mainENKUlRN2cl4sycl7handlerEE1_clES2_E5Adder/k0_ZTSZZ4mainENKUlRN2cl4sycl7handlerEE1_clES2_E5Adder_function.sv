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

// SystemVerilog created from k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function
// Created for function/kernel k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function (
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid,
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid,
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [31:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] Adder_B1_x_i_capture;
    wire Adder_B1_x_i_capture_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_clear;
    wire Adder_B1_x_i_clear_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_enable;
    wire Adder_B1_x_i_enable_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_shift;
    wire Adder_B1_x_i_shift_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_stall_pred;
    wire Adder_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_stall_succ;
    wire Adder_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_valid_loop;
    wire Adder_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_valid_pred;
    wire Adder_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] Adder_B1_x_i_valid_succ;
    wire Adder_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_feedback_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_valid_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;
    wire [31:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_profile_loop_o_valid;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_in_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_in_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_almost_empty_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_data_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_empty_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0(BLACKBOX,3)
    k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_0000EE1_clES2_E5Adder_B0 thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0 (
        .in_feedback_almost_empty_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_almost_empty_out_0),
        .in_feedback_data_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_data_out_0),
        .in_feedback_empty_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_empty_out_0),
        .in_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_feedback_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_feedback_stall_out_0),
        .out_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_stall_out_0),
        .out_valid_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2(BLACKBOX,5)
    k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_0000EE1_clES2_E5Adder_B2 thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2 (
        .in_feedback_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_out_0),
        .out_feedback_almost_empty_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_almost_empty_out_0),
        .out_feedback_data_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_data_out_0),
        .out_feedback_empty_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_feedback_empty_out_0),
        .out_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_stall_out_0),
        .out_valid_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1(BLACKBOX,4)
    k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_0000EE1_clES2_E5Adder_B1 thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1 (
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready(in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready),
        .in_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_stall_out_0),
        .in_valid_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_valid_out_0),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_profile_loop_o_valid(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_profile_loop_o_valid),
        .out_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_in_0),
        .out_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_out_0),
        .out_valid_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_in_0),
        .out_valid_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // Adder_B1_x(EXTIFACE,2)
    assign Adder_B1_x_i_capture = GND_q;
    assign Adder_B1_x_i_clear = GND_q;
    assign Adder_B1_x_i_enable = VCC_q;
    assign Adder_B1_x_i_shift = GND_q;
    assign Adder_B1_x_i_stall_pred = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_out_0;
    assign Adder_B1_x_i_stall_succ = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_stall_in_0;
    assign Adder_B1_x_i_valid_loop = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_profile_loop_o_valid;
    assign Adder_B1_x_i_valid_pred = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_in_0;
    assign Adder_B1_x_i_valid_succ = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_valid_out_0;
    assign Adder_B1_x_i_capture_bitsignaltemp = Adder_B1_x_i_capture[0];
    assign Adder_B1_x_i_clear_bitsignaltemp = Adder_B1_x_i_clear[0];
    assign Adder_B1_x_i_enable_bitsignaltemp = Adder_B1_x_i_enable[0];
    assign Adder_B1_x_i_shift_bitsignaltemp = Adder_B1_x_i_shift[0];
    assign Adder_B1_x_i_stall_pred_bitsignaltemp = Adder_B1_x_i_stall_pred[0];
    assign Adder_B1_x_i_stall_succ_bitsignaltemp = Adder_B1_x_i_stall_succ[0];
    assign Adder_B1_x_i_valid_loop_bitsignaltemp = Adder_B1_x_i_valid_loop[0];
    assign Adder_B1_x_i_valid_pred_bitsignaltemp = Adder_B1_x_i_valid_pred[0];
    assign Adder_B1_x_i_valid_succ_bitsignaltemp = Adder_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("Adder.B1")
    ) theAdder_B1_x (
        .i_capture(Adder_B1_x_i_capture_bitsignaltemp),
        .i_clear(Adder_B1_x_i_clear_bitsignaltemp),
        .i_enable(Adder_B1_x_i_enable_bitsignaltemp),
        .i_shift(Adder_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(Adder_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(Adder_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(Adder_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(Adder_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(Adder_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(GPOUT,21)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(GPOUT,22)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(GPOUT,23)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(GPOUT,24)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata(GPOUT,25)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid(GPOUT,26)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B1_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;

    // out_stall_out(GPOUT,27)
    assign out_stall_out = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B0_out_stall_out_0;

    // out_valid_out(GPOUT,28)
    assign out_valid_out = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_B2_out_valid_out_0;

    // rst_sync(RESETSYNC,29)
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
