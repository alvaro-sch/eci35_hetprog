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

// SystemVerilog created from k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_wrapper
// Created for function/kernel k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_c0000ter_function_wrapper (
    input wire [511:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_readdata,
    input wire [0:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_readdatavalid,
    input wire [0:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_waitrequest,
    input wire [0:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_writeack,
    input wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_almostfull,
    input wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_ready,
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
    input wire [255:0] kernel_arguments,
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
    output wire [34:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_address,
    output wire [4:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_burstcount,
    output wire [63:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_byteenable,
    output wire [0:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_enable,
    output wire [0:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_read,
    output wire [0:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_write,
    output wire [511:0] avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_writedata,
    output wire [31:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_data,
    output wire [0:0] avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_valid,
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
    wire [63:0] arg_arg0_select_b;
    wire [63:0] arg_arg1_select_b;
    wire [63:0] arg_arg2_select_b;
    wire [63:0] arg_arg3_select_b;
    wire [31:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;
    wire [0:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;
    wire [34:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_address;
    wire [4:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_burstcount;
    wire [63:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_byteenable;
    wire [0:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_enable;
    wire [0:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_read;
    wire [0:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_write;
    wire [511:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_writedata;
    wire [0:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_stall_out;
    wire [0:0] k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // arg_arg3_select(BITSELECT,6)
    assign arg_arg3_select_b = kernel_arguments[255:192];

    // arg_arg2_select(BITSELECT,5)
    assign arg_arg2_select_b = kernel_arguments[191:128];

    // arg_arg1_select(BITSELECT,4)
    assign arg_arg1_select_b = kernel_arguments[127:64];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // arg_arg0_select(BITSELECT,3)
    assign arg_arg0_select_b = kernel_arguments[63:0];

    // k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x(BLACKBOX,73)
    k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_c0000_E8A_writer_function thek1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x (
        .in_arg_acl_global_size_0(global_size_0),
        .in_arg_acl_global_size_1(global_size_1),
        .in_arg_acl_global_size_2(global_size_2),
        .in_arg_acl_local_size_0(local_size_0),
        .in_arg_acl_local_size_1(local_size_1),
        .in_arg_acl_local_size_2(local_size_2),
        .in_arg_arg0(arg_arg0_select_b),
        .in_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_i_fifoready(avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_ready),
        .in_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_readdata(avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_readdata),
        .in_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_readdatavalid(avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_readdatavalid),
        .in_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_waitrequest(avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_waitrequest),
        .in_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_writeack(avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_writeack),
        .in_stall_in(GND_q),
        .in_start(start),
        .in_valid_in(kernel_valid_in),
        .in_arg_arg1_0_tpl(arg_arg1_select_b),
        .in_arg_arg2_0_tpl(arg_arg2_select_b),
        .in_arg_arg3_0_tpl(arg_arg3_select_b),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata),
        .out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_address(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_address),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_burstcount(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_burstcount),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_byteenable(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_byteenable),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_enable(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_enable),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_read(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_read),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_write(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_write),
        .out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_writedata(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_writedata),
        .out_stall_out(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_stall_out),
        .out_valid_out(k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_address(GPOUT,58)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_address = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_address;

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_burstcount(GPOUT,59)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_burstcount = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_burstcount;

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_byteenable(GPOUT,60)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_byteenable = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_byteenable;

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_enable(GPOUT,61)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_enable = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_enable;

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_read(GPOUT,62)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_read = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_read;

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_write(GPOUT,63)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_write = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_write;

    // avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_writedata(GPOUT,64)
    assign avm_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_writedata = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_load_k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_avm_writedata;

    // avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_data(GPOUT,65)
    assign avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_data = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifodata;

    // avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_valid(GPOUT,66)
    assign avst_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_valid = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_iowr_bl_acl_c_ZN2cl4sycl3ext5intel4pipeI11a_read_pipefLi16EE9m_StorageE_pipe_channel_o_fifovalid;

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

    // clock2x_output(GPOUT,67)
    assign clock2x_output = acl_clock2x_dummy_consumer_myout;

    // has_a_lsu_active(GPOUT,68)
    assign has_a_lsu_active = GND_q;

    // has_a_write_pending(GPOUT,69)
    assign has_a_write_pending = GND_q;

    // kernel_stall_out(GPOUT,70)
    assign kernel_stall_out = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_stall_out;

    // kernel_valid_out(GPOUT,71)
    assign kernel_valid_out = k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer_function_aunroll_x_out_valid_out;

    // rst_sync(RESETSYNC,74)
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
