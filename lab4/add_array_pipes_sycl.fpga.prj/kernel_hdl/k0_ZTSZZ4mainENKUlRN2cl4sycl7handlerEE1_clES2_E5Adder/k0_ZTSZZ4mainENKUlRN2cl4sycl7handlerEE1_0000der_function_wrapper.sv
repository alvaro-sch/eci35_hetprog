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

// SystemVerilog created from k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_wrapper
// Created for function/kernel k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_0000der_function_wrapper (
    input wire [31:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_data,
    input wire [0:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_valid,
    input wire [31:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_data,
    input wire [0:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_valid,
    input wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_ready,
    input wire [0:0] clock2x,
    input wire [63:0] global_id_0,
    input wire [63:0] global_id_1,
    input wire [63:0] global_id_2,
    input wire [63:0] global_offset_0,
    input wire [63:0] global_offset_1,
    input wire [63:0] global_offset_2,
    input wire [63:0] global_size_0,
    input wire [63:0] global_size_1,
    input wire [63:0] global_size_2,
    input wire [31:0] group_id_0,
    input wire [31:0] group_id_1,
    input wire [31:0] group_id_2,
    input wire [0:0] kernel_stall_in,
    input wire [0:0] kernel_valid_in,
    input wire [31:0] local_id_0,
    input wire [31:0] local_id_1,
    input wire [31:0] local_id_2,
    input wire [0:0] local_router_hang,
    input wire [31:0] local_size_0,
    input wire [31:0] local_size_1,
    input wire [31:0] local_size_2,
    input wire [31:0] num_groups_0,
    input wire [31:0] num_groups_1,
    input wire [31:0] num_groups_2,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    input wire [31:0] work_dim,
    input wire [31:0] workgroup_size,
    output wire [0:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_almost_full,
    output wire [0:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_ready,
    output wire [0:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_almost_full,
    output wire [0:0] avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_ready,
    output wire [31:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_data,
    output wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_valid,
    output wire [0:0] clock2x_output,
    output wire [0:0] has_a_lsu_active,
    output wire [0:0] has_a_write_pending,
    output wire [0:0] kernel_stall_out,
    output wire [0:0] kernel_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] acl_clock2x_dummy_consumer_clock2x;
    wire acl_clock2x_dummy_consumer_clock2x_bitsignaltemp;
    wire [0:0] acl_clock2x_dummy_consumer_myout;
    wire acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;
    wire [31:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_stall_out;
    wire [0:0] k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function(BLACKBOX,40)
    k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function thek0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata(avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_data),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid(avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_valid),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifodata(avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_data),
        .in_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifovalid(avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_valid),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready(avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_ready),
        .in_stall_in(GND_q),
        .in_valid_in(kernel_valid_in),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full),
        .out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_stall_out(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_stall_out),
        .out_valid_out(k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_almost_full(GPOUT,41)
    assign avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_almost_full = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_ready(GPOUT,42)
    assign avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_ready = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;

    // avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_almost_full(GPOUT,43)
    assign avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_almost_full = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoalmost_full;

    // avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_ready(GPOUT,44)
    assign avst_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_ready = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iord_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11b_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifoready;

    // avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_data(GPOUT,45)
    assign avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_data = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;

    // avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_valid(GPOUT,46)
    assign avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_valid = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI12c_write_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;

    // acl_clock2x_dummy_consumer(EXTIFACE,2)
    assign acl_clock2x_dummy_consumer_clock2x = clock2x;
    assign acl_clock2x_dummy_consumer_clock2x_bitsignaltemp = acl_clock2x_dummy_consumer_clock2x[0];
    assign acl_clock2x_dummy_consumer_myout[0] = acl_clock2x_dummy_consumer_myout_bitsignaltemp;
    acl_clock2x_holder theacl_clock2x_dummy_consumer (
        .clock2x(acl_clock2x_dummy_consumer_clock2x_bitsignaltemp),
        .myout(acl_clock2x_dummy_consumer_myout_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // clock2x_output(GPOUT,47)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,48)
    assign has_a_lsu_active = GND_q;

    // has_a_write_pending(GPOUT,49)
    assign has_a_write_pending = GND_q;

    // kernel_stall_out(GPOUT,50)
    assign kernel_stall_out = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_stall_out;

    // kernel_valid_out(GPOUT,51)
    assign kernel_valid_out = k0_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE1_clES2_E5Adder_function_out_valid_out;

    // rst_sync(RESETSYNC,53)
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
