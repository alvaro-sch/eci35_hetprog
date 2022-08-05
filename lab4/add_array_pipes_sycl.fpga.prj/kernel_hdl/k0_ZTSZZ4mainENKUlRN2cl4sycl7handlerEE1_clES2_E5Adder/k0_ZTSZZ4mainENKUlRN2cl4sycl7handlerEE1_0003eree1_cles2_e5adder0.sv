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

// SystemVerilog created from i_iowr_bl_acl_c_zn2cl4sycl3ext5intel4pipei12c_write_pipefli16ee9m_storagee_pipe_channel_unnamed_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder3_k0_ztszz4mainenkulrn2cl4sycl7handleree1_cles2_e5adder0
// Created for function/kernel k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_0003eree1_cles2_e5adder0 (
    input wire [0:0] in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready,
    output wire [31:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_almost_empty_in,
    input wire [0:0] in_empty_in,
    input wire [31:0] in_i_data,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid,
    output wire [0:0] out_o_ack,
    output wire [0:0] out_o_almost_empty,
    output wire [0:0] out_o_empty,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] c32_0_q;
    wire [31:0] iowr_i_data;
    wire [0:0] iowr_i_endofpacket;
    wire iowr_i_endofpacket_bitsignaltemp;
    wire [0:0] iowr_i_fifoready;
    wire iowr_i_fifoready_bitsignaltemp;
    wire [31:0] iowr_i_fifosize;
    wire [31:0] iowr_i_packetempty;
    wire [0:0] iowr_i_predicate;
    wire iowr_i_predicate_bitsignaltemp;
    wire [0:0] iowr_i_stall;
    wire iowr_i_stall_bitsignaltemp;
    wire [0:0] iowr_i_startofpacket;
    wire iowr_i_startofpacket_bitsignaltemp;
    wire [0:0] iowr_i_valid;
    wire iowr_i_valid_bitsignaltemp;
    wire [0:0] iowr_o_ack;
    wire iowr_o_ack_bitsignaltemp;
    wire [0:0] iowr_o_almost_empty;
    wire iowr_o_almost_empty_bitsignaltemp;
    wire [0:0] iowr_o_empty;
    wire iowr_o_empty_bitsignaltemp;
    wire [31:0] iowr_o_fifodata;
    wire [0:0] iowr_o_fifoempty;
    wire [0:0] iowr_o_fifovalid;
    wire iowr_o_fifovalid_bitsignaltemp;
    wire [0:0] iowr_o_stall;
    wire iowr_o_stall_bitsignaltemp;
    wire [0:0] iowr_o_valid;
    wire iowr_o_valid_bitsignaltemp;
    wire [31:0] iowr_profile_total_fifo_size_incr;
    reg [0:0] rst_sync_rst_sclrn;


    // c32_0(CONSTANT,3)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iowr(EXTIFACE,6)
    assign iowr_i_data = in_i_data;
    assign iowr_i_endofpacket = GND_q;
    assign iowr_i_fifoready = in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready;
    assign iowr_i_fifosize = c32_0_q;
    assign iowr_i_packetempty = c32_0_q;
    assign iowr_i_predicate = GND_q;
    assign iowr_i_stall = in_i_stall;
    assign iowr_i_startofpacket = GND_q;
    assign iowr_i_valid = in_i_valid;
    assign iowr_i_endofpacket_bitsignaltemp = iowr_i_endofpacket[0];
    assign iowr_i_fifoready_bitsignaltemp = iowr_i_fifoready[0];
    assign iowr_i_predicate_bitsignaltemp = iowr_i_predicate[0];
    assign iowr_i_stall_bitsignaltemp = iowr_i_stall[0];
    assign iowr_i_startofpacket_bitsignaltemp = iowr_i_startofpacket[0];
    assign iowr_i_valid_bitsignaltemp = iowr_i_valid[0];
    assign iowr_o_ack[0] = iowr_o_ack_bitsignaltemp;
    assign iowr_o_almost_empty[0] = iowr_o_almost_empty_bitsignaltemp;
    assign iowr_o_empty[0] = iowr_o_empty_bitsignaltemp;
    assign iowr_o_fifovalid[0] = iowr_o_fifovalid_bitsignaltemp;
    assign iowr_o_stall[0] = iowr_o_stall_bitsignaltemp;
    assign iowr_o_valid[0] = iowr_o_valid_bitsignaltemp;
    hld_iowr #(
        .ALMOST_EMPTY_CUTOFF_DOWNSTREAM(7),
        .ALMOST_FULL_CUTOFF_SIDEPATH(7),
        .ALMOST_FULL_CUTOFF_UPSTREAM(7),
        .CAPACITY_FROM_CHANNEL(0),
        .DISCONNECT_DOWNSTREAM(0),
        .INTER_KERNEL_PIPELINING(0),
        .USE_STALL_LATENCY_SIDEPATH(1),
        .ALLOW_HIGH_SPEED_FIFO_USAGE(0),
        .ASYNC_RESET(0),
        .CUTPATHS(0),
        .DATA_WIDTH(32),
        .EMPTY_WIDTH(0),
        .ENABLED(0),
        .NON_BLOCKING(0),
        .NO_PREDICATION(1),
        .STALL_IN_EARLINESS_DOWNSTREAM(3),
        .SYNCHRONIZE_RESET(0),
        .USE_STALL_LATENCY_DOWNSTREAM(1),
        .USE_STALL_LATENCY_UPSTREAM(1)
    ) theiowr (
        .i_data(in_i_data),
        .i_endofpacket(iowr_i_endofpacket_bitsignaltemp),
        .i_fifoready(iowr_i_fifoready_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_packetempty(c32_0_q),
        .i_predicate(iowr_i_predicate_bitsignaltemp),
        .i_stall(iowr_i_stall_bitsignaltemp),
        .i_startofpacket(iowr_i_startofpacket_bitsignaltemp),
        .i_valid(iowr_i_valid_bitsignaltemp),
        .o_ack(iowr_o_ack_bitsignaltemp),
        .o_almost_empty(iowr_o_almost_empty_bitsignaltemp),
        .o_empty(iowr_o_empty_bitsignaltemp),
        .o_fifodata(iowr_o_fifodata),
        .o_fifoempty(),
        .o_fifovalid(iowr_o_fifovalid_bitsignaltemp),
        .o_stall(iowr_o_stall_bitsignaltemp),
        .o_valid(iowr_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // regfree_osync(GPOUT,8)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata = iowr_o_fifodata;

    // sync_out(GPOUT,10)@20000000
    assign out_o_stall = iowr_o_stall;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid = iowr_o_fifovalid;

    // dupName_0_sync_out_x(GPOUT,14)@119
    assign out_o_ack = iowr_o_ack;
    assign out_o_almost_empty = iowr_o_almost_empty;
    assign out_o_empty = iowr_o_empty;
    assign out_o_valid = iowr_o_valid;

    // rst_sync(RESETSYNC,15)
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
