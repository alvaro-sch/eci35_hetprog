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

// SystemVerilog created from k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_function
// Created for function/kernel k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000_E8B_writer_function (
    output wire [31:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid,
    output wire [34:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address,
    output wire [4:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount,
    output wire [63:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable,
    output wire [0:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable,
    output wire [0:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read,
    output wire [0:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write,
    output wire [511:0] out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_arg_acl_global_size_0,
    input wire [63:0] in_arg_acl_global_size_1,
    input wire [63:0] in_arg_acl_global_size_2,
    input wire [31:0] in_arg_acl_local_size_0,
    input wire [31:0] in_arg_acl_local_size_1,
    input wire [31:0] in_arg_acl_local_size_2,
    input wire [63:0] in_arg_arg0,
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready,
    input wire [511:0] in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_readdata,
    input wire [0:0] in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_readdatavalid,
    input wire [0:0] in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_waitrequest,
    input wire [0:0] in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_arg_arg1_0_tpl,
    input wire [63:0] in_arg_arg2_0_tpl,
    input wire [63:0] in_arg_arg3_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] B_writer_B1_x_i_capture;
    wire B_writer_B1_x_i_capture_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_clear;
    wire B_writer_B1_x_i_clear_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_enable;
    wire B_writer_B1_x_i_enable_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_shift;
    wire B_writer_B1_x_i_shift_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_stall_pred;
    wire B_writer_B1_x_i_stall_pred_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_stall_succ;
    wire B_writer_B1_x_i_stall_succ_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_valid_loop;
    wire B_writer_B1_x_i_valid_loop_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_valid_pred;
    wire B_writer_B1_x_i_valid_pred_bitsignaltemp;
    wire [0:0] B_writer_B1_x_i_valid_succ;
    wire B_writer_B1_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_almost_empty_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_data_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_empty_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_valid_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_feedback_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_valid_out_0;
    wire [31:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [34:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address;
    wire [4:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount;
    wire [63:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write;
    wire [511:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_in_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_out_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_in_0;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_out_0;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x(BLACKBOX,17)
    k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000_clES2_E8B_writer_B0 thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x (
        .in_arg0(in_arg_arg0),
        .in_feedback_almost_empty_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_almost_empty_out_0),
        .in_feedback_data_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_data_out_0),
        .in_feedback_empty_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_empty_out_0),
        .in_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .in_arg3_0_tpl(in_arg_arg3_0_tpl),
        .out_feedback_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_feedback_stall_out_0),
        .out_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_stall_out_0),
        .out_valid_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2(BLACKBOX,3)
    k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000_clES2_E8B_writer_B2 thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2 (
        .in_feedback_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_feedback_stall_out_0),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_out_0),
        .out_feedback_almost_empty_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_almost_empty_out_0),
        .out_feedback_data_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_data_out_0),
        .out_feedback_empty_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_feedback_empty_out_0),
        .out_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_stall_out_0),
        .out_valid_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x(BLACKBOX,18)
    k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_0000_clES2_E8B_writer_B1 thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x (
        .in_arg0(in_arg_arg0),
        .in_flush(in_start),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready(in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready),
        .in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_readdata(in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_readdata),
        .in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_readdatavalid(in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_readdatavalid),
        .in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_waitrequest(in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_waitrequest),
        .in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writeack(in_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writeack),
        .in_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_stall_out_0),
        .in_valid_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_valid_out_0),
        .in_arg3_0_tpl(in_arg_arg3_0_tpl),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write),
        .out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata),
        .out_profile_loop_o_valid(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_profile_loop_o_valid),
        .out_stall_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_out_0),
        .out_valid_in_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_in_0),
        .out_valid_out_0(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // B_writer_B1_x(EXTIFACE,2)
    assign B_writer_B1_x_i_capture = GND_q;
    assign B_writer_B1_x_i_clear = GND_q;
    assign B_writer_B1_x_i_enable = VCC_q;
    assign B_writer_B1_x_i_shift = GND_q;
    assign B_writer_B1_x_i_stall_pred = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_out_0;
    assign B_writer_B1_x_i_stall_succ = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_stall_in_0;
    assign B_writer_B1_x_i_valid_loop = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_profile_loop_o_valid;
    assign B_writer_B1_x_i_valid_pred = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_in_0;
    assign B_writer_B1_x_i_valid_succ = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_valid_out_0;
    assign B_writer_B1_x_i_capture_bitsignaltemp = B_writer_B1_x_i_capture[0];
    assign B_writer_B1_x_i_clear_bitsignaltemp = B_writer_B1_x_i_clear[0];
    assign B_writer_B1_x_i_enable_bitsignaltemp = B_writer_B1_x_i_enable[0];
    assign B_writer_B1_x_i_shift_bitsignaltemp = B_writer_B1_x_i_shift[0];
    assign B_writer_B1_x_i_stall_pred_bitsignaltemp = B_writer_B1_x_i_stall_pred[0];
    assign B_writer_B1_x_i_stall_succ_bitsignaltemp = B_writer_B1_x_i_stall_succ[0];
    assign B_writer_B1_x_i_valid_loop_bitsignaltemp = B_writer_B1_x_i_valid_loop[0];
    assign B_writer_B1_x_i_valid_pred_bitsignaltemp = B_writer_B1_x_i_valid_pred[0];
    assign B_writer_B1_x_i_valid_succ_bitsignaltemp = B_writer_B1_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("B_writer.B1")
    ) theB_writer_B1_x (
        .i_capture(B_writer_B1_x_i_capture_bitsignaltemp),
        .i_clear(B_writer_B1_x_i_clear_bitsignaltemp),
        .i_enable(B_writer_B1_x_i_enable_bitsignaltemp),
        .i_shift(B_writer_B1_x_i_shift_bitsignaltemp),
        .i_stall_pred(B_writer_B1_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(B_writer_B1_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(B_writer_B1_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(B_writer_B1_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(B_writer_B1_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata(GPOUT,6)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;

    // out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid(GPOUT,7)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address(GPOUT,8)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_address;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount(GPOUT,9)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_burstcount;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable(GPOUT,10)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_byteenable;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable(GPOUT,11)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_enable;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read(GPOUT,12)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_read;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write(GPOUT,13)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_write;

    // out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata(GPOUT,14)
    assign out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B1_aunroll_x_out_load_k2_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_avm_writedata;

    // out_stall_out(GPOUT,15)
    assign out_stall_out = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B0_aunroll_x_out_stall_out_0;

    // out_valid_out(GPOUT,16)
    assign out_valid_out = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE0_clES2_E8B_writer_B2_out_valid_out_0;

    // rst_sync(RESETSYNC,37)
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
