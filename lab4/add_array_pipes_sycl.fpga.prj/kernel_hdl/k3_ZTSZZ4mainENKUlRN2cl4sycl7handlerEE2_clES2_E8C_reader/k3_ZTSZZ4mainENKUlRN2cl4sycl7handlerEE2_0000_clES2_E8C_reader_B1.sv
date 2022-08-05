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

// SystemVerilog created from bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1
// Created for function/kernel k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader
// SystemVerilog created on Fri Jul 29 16:27:40 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_0000_clES2_E8C_reader_B1 (
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready,
    output wire [0:0] out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [34:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address,
    output wire [4:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount,
    output wire [63:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable,
    output wire [0:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable,
    output wire [0:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read,
    output wire [0:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write,
    output wire [511:0] out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_out_0,
    input wire [63:0] in_arg0,
    input wire [0:0] in_flush,
    input wire [31:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata,
    input wire [0:0] in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid,
    input wire [0:0] in_stall_in_0,
    input wire [511:0] in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_readdata,
    input wire [0:0] in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_readdatavalid,
    input wire [0:0] in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_waitrequest,
    input wire [0:0] in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writeack,
    input wire [0:0] in_valid_in_0,
    input wire [63:0] in_arg3_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch_out_stall_out;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch_out_valid_out_0;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_almost_empty_out;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_empty_out;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_stall_out_0;
    wire [0:0] ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_valid_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_almost_empty_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_c0_exe2;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_empty_out;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_stall_out;
    wire [34:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address;
    wire [4:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount;
    wire [63:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write;
    wire [511:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata;
    wire [0:0] bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch(BLACKBOX,2)
    k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_0000E8C_reader_B1_branch theZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch (
        .in_almost_empty_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_almost_empty_out),
        .in_c0_exe2(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_c0_exe2),
        .in_empty_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_empty_out),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_valid_out),
        .out_stall_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch_out_stall_out),
        .out_valid_out_0(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge(BLACKBOX,3)
    k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_0000_E8C_reader_B1_merge theZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge (
        .in_stall_in(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_almost_empty_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_almost_empty_out),
        .out_empty_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_empty_out),
        .out_stall_out_0(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_stall_out_0),
        .out_valid_out(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region(BLACKBOX,4)
    k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_0000ader_B1_stall_region thebb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region (
        .in_almost_empty_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_almost_empty_out),
        .in_arg0(in_arg0),
        .in_empty_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_empty_out),
        .in_flush(in_flush),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid(in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid),
        .in_stall_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch_out_stall_out),
        .in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_readdata(in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_readdata),
        .in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_readdatavalid(in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_readdatavalid),
        .in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_waitrequest(in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_waitrequest),
        .in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writeack(in_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writeack),
        .in_valid_in(ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_valid_out),
        .in_arg3_0_tpl(in_arg3_0_tpl),
        .out_almost_empty_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_almost_empty_out),
        .out_c0_exe2(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_c0_exe2),
        .out_empty_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_empty_out),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready),
        .out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active),
        .out_profile_loop_o_valid(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_stall_out),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write),
        .out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata),
        .out_valid_out(bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(GPOUT,5)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(GPOUT,6)
    assign out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;

    // out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active(GPOUT,7)
    assign out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_lsu_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_o_active;

    // out_profile_loop_o_valid(GPOUT,8)
    assign out_profile_loop_o_valid = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_profile_loop_o_valid;

    // out_stall_in_0(GPOUT,9)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,10)
    assign out_stall_out_0 = ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_merge_out_stall_out_0;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address(GPOUT,11)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_address;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount(GPOUT,12)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_burstcount;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable(GPOUT,13)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_byteenable;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable(GPOUT,14)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_enable;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read(GPOUT,15)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_read;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write(GPOUT,16)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_write;

    // out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata(GPOUT,17)
    assign out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata = bb_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_stall_region_out_unnamed_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader4_k3_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_avm_writedata;

    // out_valid_in_0(GPOUT,18)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = ZTSZZ4mainENKUlRN2cl4sycl7handlerEE2_clES2_E8C_reader_B1_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,31)
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
