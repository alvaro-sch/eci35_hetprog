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

// SystemVerilog created from k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_c0000r_function_cra_agent
// Created for function/kernel k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_clES2_E8A_writer
// SystemVerilog created on Fri Jul 29 16:27:39 2022


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module k1_ZTSZZ4mainENKUlRN2cl4sycl7handlerEE_c0000r_function_cra_agent (
    input wire [0:0] acl_counter_full,
    input wire [31:0] acl_counter_size,
    input wire [4:0] avs_cra_address,
    input wire [7:0] avs_cra_byteenable,
    input wire [0:0] avs_cra_enable,
    input wire [0:0] avs_cra_read,
    input wire [0:0] avs_cra_write,
    input wire [63:0] avs_cra_writedata,
    input wire [0:0] finish,
    input wire [0:0] has_a_lsu_active,
    input wire [0:0] has_a_write_pending,
    input wire [0:0] valid_in,
    output wire [0:0] acl_counter_reset,
    output wire [63:0] avs_cra_readdata,
    output wire [0:0] avs_cra_readdatavalid,
    output wire [0:0] cra_irq,
    output wire [63:0] global_offset_0,
    output wire [63:0] global_offset_1,
    output wire [63:0] global_offset_2,
    output wire [63:0] global_size_0,
    output wire [63:0] global_size_1,
    output wire [63:0] global_size_2,
    output wire [255:0] kernel_arguments,
    output wire [31:0] local_size_0,
    output wire [31:0] local_size_1,
    output wire [31:0] local_size_2,
    output wire [31:0] num_groups_0,
    output wire [31:0] num_groups_1,
    output wire [31:0] num_groups_2,
    output wire [0:0] start,
    output wire [31:0] status,
    output wire [31:0] work_dim,
    output wire [31:0] workgroup_size,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] NO_NAME_q;
    wire [1:0] adder_counter_width_b;
    wire [4:0] address_ref_q;
    wire [63:0] arg_bit_join_q;
    reg [31:0] arguments_0_q;
    reg [31:0] arguments_0_buffered_q;
    reg [31:0] arguments_1_q;
    reg [31:0] arguments_1_buffered_q;
    reg [31:0] arguments_2_q;
    reg [31:0] arguments_2_buffered_q;
    reg [31:0] arguments_3_q;
    reg [31:0] arguments_3_buffered_q;
    reg [31:0] arguments_4_q;
    reg [31:0] arguments_4_buffered_q;
    reg [31:0] arguments_5_q;
    reg [31:0] arguments_5_buffered_q;
    reg [31:0] arguments_6_q;
    reg [31:0] arguments_6_buffered_q;
    reg [31:0] arguments_7_q;
    reg [31:0] arguments_7_buffered_q;
    wire [63:0] bit_enable_q;
    wire [63:0] bit_enable_bar_q;
    wire [31:0] bit_enable_bottom_b;
    wire [31:0] bit_enable_bottom_bar_b;
    wire [31:0] bit_enable_top_b;
    wire [31:0] bit_enable_top_bar_b;
    reg [0:0] buffered_start_NO_SHIFT_REG_q;
    wire [31:0] bus_high_b;
    wire [31:0] bus_low_b;
    wire [0:0] can_write_q;
    wire [0:0] clear_finish_counter_pre_comp_q;
    reg [0:0] clear_finish_counter_reg_q;
    wire [0:0] clear_on_read_mux_s;
    reg [1:0] clear_on_read_mux_q;
    wire [0:0] clear_or_finish_s;
    reg [1:0] clear_or_finish_q;
    wire [1:0] clear_to_zero_q;
    wire [0:0] compute_finished_q;
    wire [0:0] compute_running_q;
    wire [0:0] compute_running_not_done_q;
    wire [31:0] const_32_zero_q;
    wire [61:0] const_finish_counter_padding_q;
    reg [63:0] cra_output_readdata_reg_q;
    reg [0:0] cra_output_readdatavalid_reg_q;
    reg [0:0] cra_output_was_finish_counter_address_stage1_reg_q;
    reg [0:0] cra_output_was_finish_counter_address_stage2_reg_q;
    reg [63:0] cra_stage1_data_reg_q;
    reg [63:0] cra_stage2_data_reg_q;
    wire [0:0] done_or_printf_or_profile_irq_signal_q;
    reg [1:0] finish_counter_NO_SHIFT_REG_q;
    wire [4:0] finish_counter_addr_q;
    wire [1:0] finish_during_clear_q;
    wire [0:0] finish_masked_by_running_q;
    wire [0:0] finish_pulse_q;
    wire [0:0] finish_pulse_while_running_q;
    wire [3:0] finished_exists_a;
    wire [3:0] finished_exists_b;
    logic [3:0] finished_exists_o;
    wire [0:0] finished_exists_c;
    wire [63:0] global_offset_0_bit_join_q;
    wire [63:0] global_offset_1_bit_join_q;
    wire [63:0] global_offset_2_bit_join_q;
    reg [31:0] global_offset_reg_lower_0_q;
    reg [31:0] global_offset_reg_lower_0_buffered_q;
    reg [31:0] global_offset_reg_lower_1_q;
    reg [31:0] global_offset_reg_lower_1_buffered_q;
    reg [31:0] global_offset_reg_lower_2_q;
    reg [31:0] global_offset_reg_lower_2_buffered_q;
    reg [31:0] global_offset_reg_upper_0_q;
    reg [31:0] global_offset_reg_upper_0_buffered_q;
    reg [31:0] global_offset_reg_upper_1_q;
    reg [31:0] global_offset_reg_upper_1_buffered_q;
    reg [31:0] global_offset_reg_upper_2_q;
    reg [31:0] global_offset_reg_upper_2_buffered_q;
    wire [63:0] global_size_0_bit_join_q;
    wire [63:0] global_size_1_bit_join_q;
    wire [63:0] global_size_2_bit_join_q;
    reg [31:0] global_size_reg_lower_0_q;
    reg [31:0] global_size_reg_lower_0_buffered_q;
    reg [31:0] global_size_reg_lower_1_q;
    reg [31:0] global_size_reg_lower_1_buffered_q;
    reg [31:0] global_size_reg_lower_2_q;
    reg [31:0] global_size_reg_lower_2_buffered_q;
    reg [31:0] global_size_reg_upper_0_q;
    wire [2:0] incrementor_a;
    wire [2:0] incrementor_b;
    logic [2:0] incrementor_o;
    wire [2:0] incrementor_q;
    wire [0:0] is_finish_counter_addr_q;
    wire [0:0] keep_buffered_start_q;
    wire [0:0] keep_buffered_start_or_new_start_q;
    wire [255:0] kernel_arg_bit_join_q;
    reg [0:0] last_finish_state_q;
    reg [31:0] local_size_reg_0_q;
    reg [31:0] local_size_reg_0_buffered_q;
    reg [31:0] local_size_reg_1_q;
    reg [31:0] local_size_reg_1_buffered_q;
    reg [31:0] local_size_reg_2_q;
    reg [31:0] local_size_reg_2_buffered_q;
    wire [31:0] mask0_q;
    wire [31:0] mask1_q;
    wire [31:0] new_data_q;
    wire [0:0] next_start_reg_value_q;
    wire [0:0] next_started_value_q;
    wire [0:0] not_finished_q;
    wire [0:0] not_last_finish_state_q;
    wire [0:0] not_running_bit_q;
    wire [0:0] not_start_q;
    wire [0:0] not_started_q;
    reg [31:0] num_groups_reg_0_q;
    reg [31:0] num_groups_reg_0_buffered_q;
    reg [31:0] num_groups_reg_1_q;
    reg [31:0] num_groups_reg_1_buffered_q;
    reg [31:0] num_groups_reg_2_q;
    reg [31:0] num_groups_reg_2_buffered_q;
    wire [63:0] padded_finish_counter_q;
    reg [255:0] pipe_reg0_kernel_arguments_q;
    reg [0:0] pipe_reg0_start_q;
    reg [255:0] pipe_reg1_kernel_arguments_q;
    reg [0:0] pipe_reg1_start_q;
    wire [0:0] printf_bit_b;
    wire [0:0] printf_bit_mux_s;
    reg [0:0] printf_bit_mux_q;
    wire [0:0] printf_counter_reset_mux_s;
    reg [0:0] printf_counter_reset_mux_q;
    wire [0:0] printf_reset_bit_b;
    wire [0:0] profile_irq_and_running_q;
    wire [63:0] readdata_bus_out_q;
    wire [0:0] readdata_output_mux_2_s;
    reg [63:0] readdata_output_mux_2_q;
    wire [0:0] readdata_upper_bits_mux_s;
    reg [31:0] readdata_upper_bits_mux_q;
    reg [0:0] readdata_valid_stage1_reg_q;
    reg [0:0] readdata_valid_stage2_reg_q;
    wire [0:0] running_bit_b;
    wire [0:0] select_0_b;
    wire [0:0] select_1_b;
    wire [0:0] select_2_b;
    wire [0:0] select_3_b;
    wire [0:0] select_4_b;
    wire [0:0] select_5_b;
    wire [0:0] select_6_b;
    wire [0:0] select_7_b;
    reg [0:0] start_NO_SHIFT_REG_q;
    wire [0:0] start_bit_b;
    wire [0:0] start_bit_computation_q;
    wire [0:0] start_buffered_and_kernel_idle_q;
    reg [0:0] start_from_buffered_start_NO_SHIFT_REG_q;
    wire [0:0] start_is_or_going_high_q;
    wire [0:0] start_or_start_buffered_q;
    reg [0:0] started_NO_SHIFT_REG_q;
    reg [31:0] status_NO_SHIFT_REG_q;
    wire [0:0] status_bit_2_b;
    wire [0:0] status_done_bit_b;
    wire [31:0] status_from_cra_q;
    wire [14:0] status_low_b;
    wire [0:0] status_select_s;
    reg [31:0] status_select_q;
    wire [31:0] status_self_update_q;
    wire [4:0] unchanged_status_data_b;
    wire [15:0] version_number_q;
    wire [0:0] will_be_started_q;
    reg [31:0] work_dim_NO_SHIFT_REG_q;
    reg [31:0] work_dim_NO_SHIFT_REG_buffered_q;
    reg [31:0] workgroup_size_NO_SHIFT_REG_q;
    reg [31:0] workgroup_size_NO_SHIFT_REG_buffered_q;
    wire [63:0] dupName_0_arg_bit_join_x_q;
    wire [0:0] dupName_0_ctrl_profile_status_bit_x_b;
    wire [31:0] dupName_0_mask0_x_q;
    wire [31:0] dupName_0_new_data_x_q;
    wire [63:0] dupName_1_arg_bit_join_x_q;
    wire [31:0] dupName_1_mask0_x_q;
    wire [31:0] dupName_1_mask1_x_q;
    wire [31:0] dupName_1_new_data_x_q;
    wire [63:0] dupName_2_arg_bit_join_x_q;
    wire [31:0] dupName_2_mask0_x_q;
    wire [31:0] dupName_2_new_data_x_q;
    wire [31:0] dupName_3_mask0_x_q;
    wire [31:0] dupName_3_new_data_x_q;
    wire [31:0] dupName_4_mask0_x_q;
    wire [31:0] dupName_4_new_data_x_q;
    wire [0:0] dupName_5_NO_NAME_x_q;
    wire [4:0] dupName_5_address_ref_x_q;
    wire [0:0] dupName_5_can_write_x_q;
    wire [31:0] dupName_5_mask0_x_q;
    wire [31:0] dupName_5_new_data_x_q;
    wire [0:0] dupName_6_NO_NAME_x_q;
    wire [4:0] dupName_6_address_ref_x_q;
    wire [0:0] dupName_6_can_write_x_q;
    wire [31:0] dupName_6_mask0_x_q;
    wire [31:0] dupName_6_new_data_x_q;
    wire [0:0] dupName_7_NO_NAME_x_q;
    wire [4:0] dupName_7_address_ref_x_q;
    wire [0:0] dupName_7_can_write_x_q;
    wire [31:0] dupName_7_mask0_x_q;
    wire [31:0] dupName_7_new_data_x_q;
    wire [0:0] dupName_8_NO_NAME_x_q;
    wire [4:0] dupName_8_address_ref_x_q;
    wire [0:0] dupName_8_can_write_x_q;
    wire [31:0] dupName_8_mask0_x_q;
    wire [31:0] dupName_8_new_data_x_q;
    wire [0:0] dupName_9_NO_NAME_x_q;
    wire [4:0] dupName_9_address_ref_x_q;
    wire [0:0] dupName_9_can_write_x_q;
    wire [31:0] dupName_9_mask0_x_q;
    wire [31:0] dupName_9_new_data_x_q;
    wire [0:0] dupName_10_NO_NAME_x_q;
    wire [4:0] dupName_10_address_ref_x_q;
    wire [0:0] dupName_10_can_write_x_q;
    wire [31:0] dupName_10_mask0_x_q;
    wire [31:0] dupName_10_new_data_x_q;
    wire [0:0] dupName_11_NO_NAME_x_q;
    wire [4:0] dupName_11_address_ref_x_q;
    wire [0:0] dupName_11_can_write_x_q;
    wire [31:0] dupName_11_mask0_x_q;
    wire [31:0] dupName_11_new_data_x_q;
    wire [0:0] dupName_12_NO_NAME_x_q;
    wire [4:0] dupName_12_address_ref_x_q;
    wire [0:0] dupName_12_can_write_x_q;
    wire [31:0] dupName_12_mask0_x_q;
    wire [31:0] dupName_12_new_data_x_q;
    wire [0:0] dupName_13_NO_NAME_x_q;
    wire [4:0] dupName_13_address_ref_x_q;
    wire [0:0] dupName_13_can_write_x_q;
    wire [31:0] dupName_13_mask0_x_q;
    wire [31:0] dupName_13_new_data_x_q;
    wire [0:0] dupName_14_NO_NAME_x_q;
    wire [4:0] dupName_14_address_ref_x_q;
    wire [0:0] dupName_14_can_write_x_q;
    wire [31:0] dupName_14_mask0_x_q;
    wire [31:0] dupName_14_new_data_x_q;
    wire [0:0] dupName_15_NO_NAME_x_q;
    wire [4:0] dupName_15_address_ref_x_q;
    wire [0:0] dupName_15_can_write_x_q;
    wire [31:0] dupName_15_mask0_x_q;
    wire [31:0] dupName_15_new_data_x_q;
    wire [0:0] dupName_16_NO_NAME_x_q;
    wire [4:0] dupName_16_address_ref_x_q;
    wire [0:0] dupName_16_can_write_x_q;
    wire [31:0] dupName_16_mask0_x_q;
    wire [31:0] dupName_16_new_data_x_q;
    wire [0:0] dupName_17_NO_NAME_x_q;
    wire [4:0] dupName_17_address_ref_x_q;
    wire [0:0] dupName_17_can_write_x_q;
    wire [31:0] dupName_17_mask0_x_q;
    wire [31:0] dupName_17_new_data_x_q;
    wire [31:0] dupName_18_mask0_x_q;
    wire [31:0] dupName_18_new_data_x_q;
    wire [31:0] dupName_19_mask0_x_q;
    wire [31:0] dupName_19_new_data_x_q;
    wire [31:0] dupName_20_mask0_x_q;
    wire [31:0] dupName_20_new_data_x_q;
    wire [31:0] dupName_21_mask0_x_q;
    wire [31:0] dupName_21_new_data_x_q;
    wire [31:0] dupName_22_mask0_x_q;
    wire [31:0] dupName_22_new_data_x_q;
    wire [31:0] dupName_23_mask0_x_q;
    wire [31:0] dupName_23_new_data_x_q;
    wire [31:0] dupName_24_mask0_x_q;
    wire [31:0] dupName_24_new_data_x_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // version_number(CONSTANT,192)
    assign version_number_q = $unsigned(16'b0000000000000100);

    // running_bit(BITSELECT,166)
    assign running_bit_b = status_NO_SHIFT_REG_q[15:15];

    // not_finished(LOGICAL,118)
    assign not_finished_q = ~ (finish);

    // compute_running_not_done(LOGICAL,41)
    assign compute_running_not_done_q = not_finished_q & running_bit_b;

    // start_bit(BITSELECT,176)
    assign start_bit_b = status_NO_SHIFT_REG_q[0:0];

    // start_or_start_buffered(LOGICAL,181)
    assign start_or_start_buffered_q = buffered_start_NO_SHIFT_REG_q | start_bit_b;

    // keep_buffered_start(LOGICAL,103)
    assign keep_buffered_start_q = start_or_start_buffered_q & running_bit_b;

    // keep_buffered_start_or_new_start(LOGICAL,104)
    assign keep_buffered_start_or_new_start_q = keep_buffered_start_q | start_bit_b;

    // buffered_start_NO_SHIFT_REG(REG,29)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            buffered_start_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            buffered_start_NO_SHIFT_REG_q <= keep_buffered_start_or_new_start_q;
        end
    end

    // not_running_bit(LOGICAL,120)
    assign not_running_bit_q = ~ (running_bit_b);

    // start_buffered_and_kernel_idle(LOGICAL,178)
    assign start_buffered_and_kernel_idle_q = not_running_bit_q & buffered_start_NO_SHIFT_REG_q;

    // start_from_buffered_start_NO_SHIFT_REG(REG,179)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_from_buffered_start_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            start_from_buffered_start_NO_SHIFT_REG_q <= start_buffered_and_kernel_idle_q;
        end
    end

    // compute_running(LOGICAL,40)
    assign compute_running_q = start_from_buffered_start_NO_SHIFT_REG_q | compute_running_not_done_q;

    // bus_low(BITSELECT,31)
    assign bus_low_b = avs_cra_writedata[31:0];

    // select_7(BITSELECT,174)
    assign select_7_b = avs_cra_byteenable[7:7];

    // select_6(BITSELECT,173)
    assign select_6_b = avs_cra_byteenable[6:6];

    // select_5(BITSELECT,172)
    assign select_5_b = avs_cra_byteenable[5:5];

    // select_4(BITSELECT,171)
    assign select_4_b = avs_cra_byteenable[4:4];

    // select_3(BITSELECT,170)
    assign select_3_b = avs_cra_byteenable[3:3];

    // select_2(BITSELECT,169)
    assign select_2_b = avs_cra_byteenable[2:2];

    // select_1(BITSELECT,168)
    assign select_1_b = avs_cra_byteenable[1:1];

    // select_0(BITSELECT,167)
    assign select_0_b = avs_cra_byteenable[0:0];

    // bit_enable(BITJOIN,23)
    assign bit_enable_q = {select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_7_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_6_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_5_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_4_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_3_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_2_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_1_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b, select_0_b};

    // bit_enable_bottom(BITSELECT,25)
    assign bit_enable_bottom_b = bit_enable_q[31:0];

    // mask1(LOGICAL,114)
    assign mask1_q = bit_enable_bottom_b & bus_low_b;

    // bit_enable_bar(LOGICAL,24)
    assign bit_enable_bar_q = ~ (bit_enable_q);

    // bit_enable_bottom_bar(BITSELECT,26)
    assign bit_enable_bottom_bar_b = bit_enable_bar_q[31:0];

    // mask0(LOGICAL,113)
    assign mask0_q = bit_enable_bottom_bar_b & status_NO_SHIFT_REG_q;

    // new_data(LOGICAL,115)
    assign new_data_q = mask0_q | mask1_q;

    // status_low(BITSELECT,187)
    assign status_low_b = new_data_q[14:0];

    // status_from_cra(BITJOIN,186)
    assign status_from_cra_q = {version_number_q, compute_running_q, status_low_b};

    // unchanged_status_data(BITSELECT,191)
    assign unchanged_status_data_b = status_NO_SHIFT_REG_q[11:7];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // printf_counter_reset_mux(MUX,157)
    assign printf_counter_reset_mux_s = printf_reset_bit_b;
    always @(printf_counter_reset_mux_s or printf_reset_bit_b or GND_q)
    begin
        unique case (printf_counter_reset_mux_s)
            1'b0 : printf_counter_reset_mux_q = printf_reset_bit_b;
            1'b1 : printf_counter_reset_mux_q = GND_q;
            default : printf_counter_reset_mux_q = 1'b0;
        endcase
    end

    // printf_bit(BITSELECT,155)
    assign printf_bit_b = status_NO_SHIFT_REG_q[3:3];

    // printf_bit_mux(MUX,156)
    assign printf_bit_mux_s = acl_counter_full;
    always @(printf_bit_mux_s or printf_bit_b or VCC_q)
    begin
        unique case (printf_bit_mux_s)
            1'b0 : printf_bit_mux_q = printf_bit_b;
            1'b1 : printf_bit_mux_q = VCC_q;
            default : printf_bit_mux_q = 1'b0;
        endcase
    end

    // status_bit_2(BITSELECT,184)
    assign status_bit_2_b = status_NO_SHIFT_REG_q[2:2];

    // finish_masked_by_running(LOGICAL,58)
    assign finish_masked_by_running_q = finish & running_bit_b;

    // finish_during_clear(CONSTANT,57)
    assign finish_during_clear_q = $unsigned(2'b01);

    // clear_to_zero(CONSTANT,37)
    assign clear_to_zero_q = $unsigned(2'b00);

    // last_finish_state(REG,106)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            last_finish_state_q <= $unsigned(1'b0);
        end
        else
        begin
            last_finish_state_q <= finish;
        end
    end

    // not_last_finish_state(LOGICAL,119)
    assign not_last_finish_state_q = ~ (last_finish_state_q);

    // finish_pulse(LOGICAL,59)
    assign finish_pulse_q = not_last_finish_state_q & finish;

    // finish_pulse_while_running(LOGICAL,60)
    assign finish_pulse_while_running_q = finish_pulse_q & running_bit_b;

    // clear_or_finish(MUX,36)
    assign clear_or_finish_s = finish_pulse_while_running_q;
    always @(clear_or_finish_s or clear_to_zero_q or finish_during_clear_q)
    begin
        unique case (clear_or_finish_s)
            1'b0 : clear_or_finish_q = clear_to_zero_q;
            1'b1 : clear_or_finish_q = finish_during_clear_q;
            default : clear_or_finish_q = 2'b0;
        endcase
    end

    // incrementor(ADD,89)
    assign incrementor_a = {1'b0, finish_counter_NO_SHIFT_REG_q};
    assign incrementor_b = {2'b00, finish_pulse_while_running_q};
    assign incrementor_o = $unsigned(incrementor_a) + $unsigned(incrementor_b);
    assign incrementor_q = incrementor_o[2:0];

    // adder_counter_width(BITSELECT,3)
    assign adder_counter_width_b = incrementor_q[1:0];

    // readdata_valid_stage1_reg(REG,163)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_valid_stage1_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_valid_stage1_reg_q <= avs_cra_read;
        end
    end

    // finish_counter_addr(CONSTANT,56)
    assign finish_counter_addr_q = $unsigned(5'b00101);

    // is_finish_counter_addr(LOGICAL,102)
    assign is_finish_counter_addr_q = $unsigned(avs_cra_address == finish_counter_addr_q ? 1'b1 : 1'b0);

    // cra_output_was_finish_counter_address_stage1_reg(REG,49)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_was_finish_counter_address_stage1_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            cra_output_was_finish_counter_address_stage1_reg_q <= is_finish_counter_addr_q;
        end
    end

    // clear_finish_counter_pre_comp(LOGICAL,33)
    assign clear_finish_counter_pre_comp_q = cra_output_was_finish_counter_address_stage1_reg_q & readdata_valid_stage1_reg_q;

    // clear_finish_counter_reg(REG,34)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            clear_finish_counter_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            clear_finish_counter_reg_q <= clear_finish_counter_pre_comp_q;
        end
    end

    // clear_on_read_mux(MUX,35)
    assign clear_on_read_mux_s = clear_finish_counter_reg_q;
    always @(clear_on_read_mux_s or adder_counter_width_b or clear_or_finish_q)
    begin
        unique case (clear_on_read_mux_s)
            1'b0 : clear_on_read_mux_q = adder_counter_width_b;
            1'b1 : clear_on_read_mux_q = clear_or_finish_q;
            default : clear_on_read_mux_q = 2'b0;
        endcase
    end

    // finish_counter_NO_SHIFT_REG(REG,55)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            finish_counter_NO_SHIFT_REG_q <= $unsigned(2'b00);
        end
        else
        begin
            finish_counter_NO_SHIFT_REG_q <= clear_on_read_mux_q;
        end
    end

    // finished_exists(COMPARE,61)
    assign finished_exists_a = {3'b000, GND_q};
    assign finished_exists_b = {2'b00, finish_counter_NO_SHIFT_REG_q};
    assign finished_exists_o = $unsigned(finished_exists_a) - $unsigned(finished_exists_b);
    assign finished_exists_c[0] = finished_exists_o[3];

    // compute_finished(LOGICAL,39)
    assign compute_finished_q = finished_exists_c | finish_masked_by_running_q;

    // not_start(LOGICAL,121)
    assign not_start_q = ~ (start_bit_b);

    // start_bit_computation(LOGICAL,177)
    assign start_bit_computation_q = not_start_q & start_bit_b;

    // status_self_update(BITJOIN,190)
    assign status_self_update_q = {version_number_q, compute_running_q, GND_q, has_a_write_pending, has_a_lsu_active, unchanged_status_data_b, GND_q, GND_q, printf_counter_reset_mux_q, printf_bit_mux_q, status_bit_2_b, compute_finished_q, start_bit_computation_q};

    // address_ref(CONSTANT,5)
    assign address_ref_q = $unsigned(5'b00000);

    // NO_NAME(LOGICAL,2)
    assign NO_NAME_q = $unsigned(avs_cra_address == address_ref_q ? 1'b1 : 1'b0);

    // can_write(LOGICAL,32)
    assign can_write_q = NO_NAME_q & avs_cra_write;

    // status_select(MUX,189)
    assign status_select_s = can_write_q;
    always @(status_select_s or status_self_update_q or status_from_cra_q)
    begin
        unique case (status_select_s)
            1'b0 : status_select_q = status_self_update_q;
            1'b1 : status_select_q = status_from_cra_q;
            default : status_select_q = 32'b0;
        endcase
    end

    // status_NO_SHIFT_REG(REG,183)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            status_NO_SHIFT_REG_q <= $unsigned(32'b00000000000001000000000000000000);
        end
        else
        begin
            status_NO_SHIFT_REG_q <= status_select_q;
        end
    end

    // printf_reset_bit(BITSELECT,158)
    assign printf_reset_bit_b = status_NO_SHIFT_REG_q[4:4];

    // acl_counter_reset(GPOUT,129)
    assign acl_counter_reset = printf_reset_bit_b;

    // const_finish_counter_padding(CONSTANT,45)
    assign const_finish_counter_padding_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // padded_finish_counter(BITJOIN,150)
    assign padded_finish_counter_q = {const_finish_counter_padding_q, finish_counter_NO_SHIFT_REG_q};

    // const_32_zero(CONSTANT,44)
    assign const_32_zero_q = $unsigned(32'b00000000000000000000000000000000);

    // readdata_upper_bits_mux(MUX,162)
    assign readdata_upper_bits_mux_s = NO_NAME_q;
    always @(readdata_upper_bits_mux_s or const_32_zero_q or acl_counter_size)
    begin
        unique case (readdata_upper_bits_mux_s)
            1'b0 : readdata_upper_bits_mux_q = const_32_zero_q;
            1'b1 : readdata_upper_bits_mux_q = acl_counter_size;
            default : readdata_upper_bits_mux_q = 32'b0;
        endcase
    end

    // readdata_bus_out(BITJOIN,160)
    assign readdata_bus_out_q = {readdata_upper_bits_mux_q, status_NO_SHIFT_REG_q};

    // cra_stage1_data_reg(REG,51)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_stage1_data_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            cra_stage1_data_reg_q <= readdata_bus_out_q;
        end
    end

    // cra_stage2_data_reg(REG,52)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_stage2_data_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            cra_stage2_data_reg_q <= cra_stage1_data_reg_q;
        end
    end

    // cra_output_was_finish_counter_address_stage2_reg(REG,50)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_was_finish_counter_address_stage2_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            cra_output_was_finish_counter_address_stage2_reg_q <= cra_output_was_finish_counter_address_stage1_reg_q;
        end
    end

    // readdata_output_mux_2(MUX,161)
    assign readdata_output_mux_2_s = cra_output_was_finish_counter_address_stage2_reg_q;
    always @(readdata_output_mux_2_s or cra_stage2_data_reg_q or padded_finish_counter_q)
    begin
        unique case (readdata_output_mux_2_s)
            1'b0 : readdata_output_mux_2_q = cra_stage2_data_reg_q;
            1'b1 : readdata_output_mux_2_q = padded_finish_counter_q;
            default : readdata_output_mux_2_q = 64'b0;
        endcase
    end

    // cra_output_readdata_reg(REG,47)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_readdata_reg_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else
        begin
            cra_output_readdata_reg_q <= readdata_output_mux_2_q;
        end
    end

    // avs_cra_readdata(GPOUT,130)
    assign avs_cra_readdata = cra_output_readdata_reg_q;

    // readdata_valid_stage2_reg(REG,164)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            readdata_valid_stage2_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            readdata_valid_stage2_reg_q <= readdata_valid_stage1_reg_q;
        end
    end

    // cra_output_readdatavalid_reg(REG,48)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            cra_output_readdatavalid_reg_q <= $unsigned(1'b0);
        end
        else
        begin
            cra_output_readdatavalid_reg_q <= readdata_valid_stage2_reg_q;
        end
    end

    // avs_cra_readdatavalid(GPOUT,131)
    assign avs_cra_readdatavalid = cra_output_readdatavalid_reg_q;

    // dupName_0_ctrl_profile_status_bit_x(BITSELECT,200)
    assign dupName_0_ctrl_profile_status_bit_x_b = status_NO_SHIFT_REG_q[5:5];

    // profile_irq_and_running(LOGICAL,159)
    assign profile_irq_and_running_q = dupName_0_ctrl_profile_status_bit_x_b & compute_running_q;

    // status_done_bit(BITSELECT,185)
    assign status_done_bit_b = status_NO_SHIFT_REG_q[1:1];

    // done_or_printf_or_profile_irq_signal(LOGICAL,53)
    assign done_or_printf_or_profile_irq_signal_q = status_done_bit_b | printf_bit_b | profile_irq_and_running_q;

    // cra_irq(GPOUT,132)
    assign cra_irq = done_or_printf_or_profile_irq_signal_q;

    // dupName_11_address_ref_x(CONSTANT,258)
    assign dupName_11_address_ref_x_q = $unsigned(5'b01100);

    // dupName_11_NO_NAME_x(LOGICAL,257)
    assign dupName_11_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_11_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_11_can_write_x(LOGICAL,259)
    assign dupName_11_can_write_x_q = dupName_11_NO_NAME_x_q & avs_cra_write;

    // bus_high(BITSELECT,30)
    assign bus_high_b = avs_cra_writedata[63:32];

    // bit_enable_top(BITSELECT,27)
    assign bit_enable_top_b = bit_enable_q[63:32];

    // dupName_1_mask1_x(LOGICAL,208)
    assign dupName_1_mask1_x_q = bit_enable_top_b & bus_high_b;

    // bit_enable_top_bar(BITSELECT,28)
    assign bit_enable_top_bar_b = bit_enable_bar_q[63:32];

    // dupName_12_mask0_x(LOGICAL,266)
    assign dupName_12_mask0_x_q = bit_enable_top_bar_b & global_offset_reg_upper_0_buffered_q;

    // dupName_12_new_data_x(LOGICAL,268)
    assign dupName_12_new_data_x_q = dupName_12_mask0_x_q | dupName_1_mask1_x_q;

    // global_offset_reg_upper_0_buffered(REG,72)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_11_can_write_x_q == 1'b1)
        begin
            global_offset_reg_upper_0_buffered_q <= dupName_12_new_data_x_q;
        end
    end

    // global_offset_reg_upper_0(REG,71)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_upper_0_q <= global_offset_reg_upper_0_buffered_q;
        end
    end

    // dupName_11_mask0_x(LOGICAL,260)
    assign dupName_11_mask0_x_q = bit_enable_bottom_bar_b & global_offset_reg_lower_0_buffered_q;

    // dupName_11_new_data_x(LOGICAL,262)
    assign dupName_11_new_data_x_q = dupName_11_mask0_x_q | mask1_q;

    // global_offset_reg_lower_0_buffered(REG,66)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_11_can_write_x_q == 1'b1)
        begin
            global_offset_reg_lower_0_buffered_q <= dupName_11_new_data_x_q;
        end
    end

    // global_offset_reg_lower_0(REG,65)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_lower_0_q <= global_offset_reg_lower_0_buffered_q;
        end
    end

    // global_offset_0_bit_join(BITJOIN,62)
    assign global_offset_0_bit_join_q = {global_offset_reg_upper_0_q, global_offset_reg_lower_0_q};

    // global_offset_0(GPOUT,133)
    assign global_offset_0 = global_offset_0_bit_join_q;

    // dupName_12_address_ref_x(CONSTANT,264)
    assign dupName_12_address_ref_x_q = $unsigned(5'b01101);

    // dupName_12_NO_NAME_x(LOGICAL,263)
    assign dupName_12_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_12_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_12_can_write_x(LOGICAL,265)
    assign dupName_12_can_write_x_q = dupName_12_NO_NAME_x_q & avs_cra_write;

    // dupName_14_mask0_x(LOGICAL,278)
    assign dupName_14_mask0_x_q = bit_enable_top_bar_b & global_offset_reg_upper_1_buffered_q;

    // dupName_14_new_data_x(LOGICAL,280)
    assign dupName_14_new_data_x_q = dupName_14_mask0_x_q | dupName_1_mask1_x_q;

    // global_offset_reg_upper_1_buffered(REG,74)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_12_can_write_x_q == 1'b1)
        begin
            global_offset_reg_upper_1_buffered_q <= dupName_14_new_data_x_q;
        end
    end

    // global_offset_reg_upper_1(REG,73)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_upper_1_q <= global_offset_reg_upper_1_buffered_q;
        end
    end

    // dupName_13_mask0_x(LOGICAL,272)
    assign dupName_13_mask0_x_q = bit_enable_bottom_bar_b & global_offset_reg_lower_1_buffered_q;

    // dupName_13_new_data_x(LOGICAL,274)
    assign dupName_13_new_data_x_q = dupName_13_mask0_x_q | mask1_q;

    // global_offset_reg_lower_1_buffered(REG,68)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_12_can_write_x_q == 1'b1)
        begin
            global_offset_reg_lower_1_buffered_q <= dupName_13_new_data_x_q;
        end
    end

    // global_offset_reg_lower_1(REG,67)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_lower_1_q <= global_offset_reg_lower_1_buffered_q;
        end
    end

    // global_offset_1_bit_join(BITJOIN,63)
    assign global_offset_1_bit_join_q = {global_offset_reg_upper_1_q, global_offset_reg_lower_1_q};

    // global_offset_1(GPOUT,134)
    assign global_offset_1 = global_offset_1_bit_join_q;

    // dupName_13_address_ref_x(CONSTANT,270)
    assign dupName_13_address_ref_x_q = $unsigned(5'b01110);

    // dupName_13_NO_NAME_x(LOGICAL,269)
    assign dupName_13_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_13_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_13_can_write_x(LOGICAL,271)
    assign dupName_13_can_write_x_q = dupName_13_NO_NAME_x_q & avs_cra_write;

    // dupName_16_mask0_x(LOGICAL,290)
    assign dupName_16_mask0_x_q = bit_enable_top_bar_b & global_offset_reg_upper_2_buffered_q;

    // dupName_16_new_data_x(LOGICAL,292)
    assign dupName_16_new_data_x_q = dupName_16_mask0_x_q | dupName_1_mask1_x_q;

    // global_offset_reg_upper_2_buffered(REG,76)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_13_can_write_x_q == 1'b1)
        begin
            global_offset_reg_upper_2_buffered_q <= dupName_16_new_data_x_q;
        end
    end

    // global_offset_reg_upper_2(REG,75)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_upper_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_upper_2_q <= global_offset_reg_upper_2_buffered_q;
        end
    end

    // dupName_15_mask0_x(LOGICAL,284)
    assign dupName_15_mask0_x_q = bit_enable_bottom_bar_b & global_offset_reg_lower_2_buffered_q;

    // dupName_15_new_data_x(LOGICAL,286)
    assign dupName_15_new_data_x_q = dupName_15_mask0_x_q | mask1_q;

    // global_offset_reg_lower_2_buffered(REG,70)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_13_can_write_x_q == 1'b1)
        begin
            global_offset_reg_lower_2_buffered_q <= dupName_15_new_data_x_q;
        end
    end

    // global_offset_reg_lower_2(REG,69)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_offset_reg_lower_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_offset_reg_lower_2_q <= global_offset_reg_lower_2_buffered_q;
        end
    end

    // global_offset_2_bit_join(BITJOIN,64)
    assign global_offset_2_bit_join_q = {global_offset_reg_upper_2_q, global_offset_reg_lower_2_q};

    // global_offset_2(GPOUT,135)
    assign global_offset_2 = global_offset_2_bit_join_q;

    // global_size_reg_upper_0(REG,86)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_upper_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else
        begin
            global_size_reg_upper_0_q <= const_32_zero_q;
        end
    end

    // dupName_6_address_ref_x(CONSTANT,228)
    assign dupName_6_address_ref_x_q = $unsigned(5'b00111);

    // dupName_6_NO_NAME_x(LOGICAL,227)
    assign dupName_6_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_6_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_6_can_write_x(LOGICAL,229)
    assign dupName_6_can_write_x_q = dupName_6_NO_NAME_x_q & avs_cra_write;

    // dupName_2_mask0_x(LOGICAL,212)
    assign dupName_2_mask0_x_q = bit_enable_bottom_bar_b & global_size_reg_lower_0_buffered_q;

    // dupName_2_new_data_x(LOGICAL,214)
    assign dupName_2_new_data_x_q = dupName_2_mask0_x_q | mask1_q;

    // global_size_reg_lower_0_buffered(REG,81)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_6_can_write_x_q == 1'b1)
        begin
            global_size_reg_lower_0_buffered_q <= dupName_2_new_data_x_q;
        end
    end

    // global_size_reg_lower_0(REG,80)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_size_reg_lower_0_q <= global_size_reg_lower_0_buffered_q;
        end
    end

    // global_size_0_bit_join(BITJOIN,77)
    assign global_size_0_bit_join_q = {global_size_reg_upper_0_q, global_size_reg_lower_0_q};

    // global_size_0(GPOUT,136)
    assign global_size_0 = global_size_0_bit_join_q;

    // dupName_3_mask0_x(LOGICAL,215)
    assign dupName_3_mask0_x_q = bit_enable_top_bar_b & global_size_reg_lower_1_buffered_q;

    // dupName_3_new_data_x(LOGICAL,217)
    assign dupName_3_new_data_x_q = dupName_3_mask0_x_q | dupName_1_mask1_x_q;

    // global_size_reg_lower_1_buffered(REG,83)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_6_can_write_x_q == 1'b1)
        begin
            global_size_reg_lower_1_buffered_q <= dupName_3_new_data_x_q;
        end
    end

    // global_size_reg_lower_1(REG,82)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_size_reg_lower_1_q <= global_size_reg_lower_1_buffered_q;
        end
    end

    // global_size_1_bit_join(BITJOIN,78)
    assign global_size_1_bit_join_q = {global_size_reg_upper_0_q, global_size_reg_lower_1_q};

    // global_size_1(GPOUT,137)
    assign global_size_1 = global_size_1_bit_join_q;

    // dupName_7_address_ref_x(CONSTANT,234)
    assign dupName_7_address_ref_x_q = $unsigned(5'b01000);

    // dupName_7_NO_NAME_x(LOGICAL,233)
    assign dupName_7_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_7_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_7_can_write_x(LOGICAL,235)
    assign dupName_7_can_write_x_q = dupName_7_NO_NAME_x_q & avs_cra_write;

    // dupName_4_mask0_x(LOGICAL,218)
    assign dupName_4_mask0_x_q = bit_enable_bottom_bar_b & global_size_reg_lower_2_buffered_q;

    // dupName_4_new_data_x(LOGICAL,220)
    assign dupName_4_new_data_x_q = dupName_4_mask0_x_q | mask1_q;

    // global_size_reg_lower_2_buffered(REG,85)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_7_can_write_x_q == 1'b1)
        begin
            global_size_reg_lower_2_buffered_q <= dupName_4_new_data_x_q;
        end
    end

    // global_size_reg_lower_2(REG,84)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            global_size_reg_lower_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            global_size_reg_lower_2_q <= global_size_reg_lower_2_buffered_q;
        end
    end

    // global_size_2_bit_join(BITJOIN,79)
    assign global_size_2_bit_join_q = {global_size_reg_upper_0_q, global_size_reg_lower_2_q};

    // global_size_2(GPOUT,138)
    assign global_size_2 = global_size_2_bit_join_q;

    // dupName_17_address_ref_x(CONSTANT,294)
    assign dupName_17_address_ref_x_q = $unsigned(5'b10010);

    // dupName_17_NO_NAME_x(LOGICAL,293)
    assign dupName_17_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_17_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_17_can_write_x(LOGICAL,295)
    assign dupName_17_can_write_x_q = dupName_17_NO_NAME_x_q & avs_cra_write;

    // dupName_24_mask0_x(LOGICAL,317)
    assign dupName_24_mask0_x_q = bit_enable_top_bar_b & arguments_7_buffered_q;

    // dupName_24_new_data_x(LOGICAL,319)
    assign dupName_24_new_data_x_q = dupName_24_mask0_x_q | dupName_1_mask1_x_q;

    // arguments_7_buffered(REG,22)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_7_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_17_can_write_x_q == 1'b1)
        begin
            arguments_7_buffered_q <= dupName_24_new_data_x_q;
        end
    end

    // arguments_7(REG,21)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_7_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_7_q <= arguments_7_buffered_q;
        end
    end

    // dupName_23_mask0_x(LOGICAL,314)
    assign dupName_23_mask0_x_q = bit_enable_bottom_bar_b & arguments_6_buffered_q;

    // dupName_23_new_data_x(LOGICAL,316)
    assign dupName_23_new_data_x_q = dupName_23_mask0_x_q | mask1_q;

    // arguments_6_buffered(REG,20)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_6_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_17_can_write_x_q == 1'b1)
        begin
            arguments_6_buffered_q <= dupName_23_new_data_x_q;
        end
    end

    // arguments_6(REG,19)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_6_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_6_q <= arguments_6_buffered_q;
        end
    end

    // dupName_2_arg_bit_join_x(BITJOIN,210)
    assign dupName_2_arg_bit_join_x_q = {arguments_7_q, arguments_6_q};

    // dupName_16_address_ref_x(CONSTANT,288)
    assign dupName_16_address_ref_x_q = $unsigned(5'b10001);

    // dupName_16_NO_NAME_x(LOGICAL,287)
    assign dupName_16_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_16_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_16_can_write_x(LOGICAL,289)
    assign dupName_16_can_write_x_q = dupName_16_NO_NAME_x_q & avs_cra_write;

    // dupName_22_mask0_x(LOGICAL,311)
    assign dupName_22_mask0_x_q = bit_enable_top_bar_b & arguments_5_buffered_q;

    // dupName_22_new_data_x(LOGICAL,313)
    assign dupName_22_new_data_x_q = dupName_22_mask0_x_q | dupName_1_mask1_x_q;

    // arguments_5_buffered(REG,18)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_5_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_16_can_write_x_q == 1'b1)
        begin
            arguments_5_buffered_q <= dupName_22_new_data_x_q;
        end
    end

    // arguments_5(REG,17)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_5_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_5_q <= arguments_5_buffered_q;
        end
    end

    // dupName_21_mask0_x(LOGICAL,308)
    assign dupName_21_mask0_x_q = bit_enable_bottom_bar_b & arguments_4_buffered_q;

    // dupName_21_new_data_x(LOGICAL,310)
    assign dupName_21_new_data_x_q = dupName_21_mask0_x_q | mask1_q;

    // arguments_4_buffered(REG,16)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_4_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_16_can_write_x_q == 1'b1)
        begin
            arguments_4_buffered_q <= dupName_21_new_data_x_q;
        end
    end

    // arguments_4(REG,15)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_4_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_4_q <= arguments_4_buffered_q;
        end
    end

    // dupName_1_arg_bit_join_x(BITJOIN,205)
    assign dupName_1_arg_bit_join_x_q = {arguments_5_q, arguments_4_q};

    // dupName_15_address_ref_x(CONSTANT,282)
    assign dupName_15_address_ref_x_q = $unsigned(5'b10000);

    // dupName_15_NO_NAME_x(LOGICAL,281)
    assign dupName_15_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_15_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_15_can_write_x(LOGICAL,283)
    assign dupName_15_can_write_x_q = dupName_15_NO_NAME_x_q & avs_cra_write;

    // dupName_20_mask0_x(LOGICAL,305)
    assign dupName_20_mask0_x_q = bit_enable_top_bar_b & arguments_3_buffered_q;

    // dupName_20_new_data_x(LOGICAL,307)
    assign dupName_20_new_data_x_q = dupName_20_mask0_x_q | dupName_1_mask1_x_q;

    // arguments_3_buffered(REG,14)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_3_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_15_can_write_x_q == 1'b1)
        begin
            arguments_3_buffered_q <= dupName_20_new_data_x_q;
        end
    end

    // arguments_3(REG,13)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_3_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_3_q <= arguments_3_buffered_q;
        end
    end

    // dupName_19_mask0_x(LOGICAL,302)
    assign dupName_19_mask0_x_q = bit_enable_bottom_bar_b & arguments_2_buffered_q;

    // dupName_19_new_data_x(LOGICAL,304)
    assign dupName_19_new_data_x_q = dupName_19_mask0_x_q | mask1_q;

    // arguments_2_buffered(REG,12)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_15_can_write_x_q == 1'b1)
        begin
            arguments_2_buffered_q <= dupName_19_new_data_x_q;
        end
    end

    // arguments_2(REG,11)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_2_q <= arguments_2_buffered_q;
        end
    end

    // dupName_0_arg_bit_join_x(BITJOIN,198)
    assign dupName_0_arg_bit_join_x_q = {arguments_3_q, arguments_2_q};

    // dupName_14_address_ref_x(CONSTANT,276)
    assign dupName_14_address_ref_x_q = $unsigned(5'b01111);

    // dupName_14_NO_NAME_x(LOGICAL,275)
    assign dupName_14_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_14_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_14_can_write_x(LOGICAL,277)
    assign dupName_14_can_write_x_q = dupName_14_NO_NAME_x_q & avs_cra_write;

    // dupName_18_mask0_x(LOGICAL,299)
    assign dupName_18_mask0_x_q = bit_enable_top_bar_b & arguments_1_buffered_q;

    // dupName_18_new_data_x(LOGICAL,301)
    assign dupName_18_new_data_x_q = dupName_18_mask0_x_q | dupName_1_mask1_x_q;

    // arguments_1_buffered(REG,10)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_14_can_write_x_q == 1'b1)
        begin
            arguments_1_buffered_q <= dupName_18_new_data_x_q;
        end
    end

    // arguments_1(REG,9)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_1_q <= arguments_1_buffered_q;
        end
    end

    // dupName_17_mask0_x(LOGICAL,296)
    assign dupName_17_mask0_x_q = bit_enable_bottom_bar_b & arguments_0_buffered_q;

    // dupName_17_new_data_x(LOGICAL,298)
    assign dupName_17_new_data_x_q = dupName_17_mask0_x_q | mask1_q;

    // arguments_0_buffered(REG,8)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_14_can_write_x_q == 1'b1)
        begin
            arguments_0_buffered_q <= dupName_17_new_data_x_q;
        end
    end

    // arguments_0(REG,7)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            arguments_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            arguments_0_q <= arguments_0_buffered_q;
        end
    end

    // arg_bit_join(BITJOIN,6)
    assign arg_bit_join_q = {arguments_1_q, arguments_0_q};

    // kernel_arg_bit_join(BITJOIN,105)
    assign kernel_arg_bit_join_q = {dupName_2_arg_bit_join_x_q, dupName_1_arg_bit_join_x_q, dupName_0_arg_bit_join_x_q, arg_bit_join_q};

    // pipe_reg0_kernel_arguments(REG,151)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg0_kernel_arguments_q <= kernel_arg_bit_join_q;
        end
    end

    // pipe_reg1_kernel_arguments(REG,153)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg1_kernel_arguments_q <= pipe_reg0_kernel_arguments_q;
        end
    end

    // kernel_arguments(GPOUT,139)
    assign kernel_arguments = pipe_reg1_kernel_arguments_q;

    // dupName_9_address_ref_x(CONSTANT,246)
    assign dupName_9_address_ref_x_q = $unsigned(5'b01010);

    // dupName_9_NO_NAME_x(LOGICAL,245)
    assign dupName_9_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_9_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_9_can_write_x(LOGICAL,247)
    assign dupName_9_can_write_x_q = dupName_9_NO_NAME_x_q & avs_cra_write;

    // dupName_8_mask0_x(LOGICAL,242)
    assign dupName_8_mask0_x_q = bit_enable_bottom_bar_b & local_size_reg_0_buffered_q;

    // dupName_8_new_data_x(LOGICAL,244)
    assign dupName_8_new_data_x_q = dupName_8_mask0_x_q | mask1_q;

    // local_size_reg_0_buffered(REG,108)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_9_can_write_x_q == 1'b1)
        begin
            local_size_reg_0_buffered_q <= dupName_8_new_data_x_q;
        end
    end

    // local_size_reg_0(REG,107)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            local_size_reg_0_q <= local_size_reg_0_buffered_q;
        end
    end

    // local_size_0(GPOUT,140)
    assign local_size_0 = local_size_reg_0_q;

    // dupName_9_mask0_x(LOGICAL,248)
    assign dupName_9_mask0_x_q = bit_enable_top_bar_b & local_size_reg_1_buffered_q;

    // dupName_9_new_data_x(LOGICAL,250)
    assign dupName_9_new_data_x_q = dupName_9_mask0_x_q | dupName_1_mask1_x_q;

    // local_size_reg_1_buffered(REG,110)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_9_can_write_x_q == 1'b1)
        begin
            local_size_reg_1_buffered_q <= dupName_9_new_data_x_q;
        end
    end

    // local_size_reg_1(REG,109)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            local_size_reg_1_q <= local_size_reg_1_buffered_q;
        end
    end

    // local_size_1(GPOUT,141)
    assign local_size_1 = local_size_reg_1_q;

    // dupName_10_address_ref_x(CONSTANT,252)
    assign dupName_10_address_ref_x_q = $unsigned(5'b01011);

    // dupName_10_NO_NAME_x(LOGICAL,251)
    assign dupName_10_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_10_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_10_can_write_x(LOGICAL,253)
    assign dupName_10_can_write_x_q = dupName_10_NO_NAME_x_q & avs_cra_write;

    // dupName_10_mask0_x(LOGICAL,254)
    assign dupName_10_mask0_x_q = bit_enable_bottom_bar_b & local_size_reg_2_buffered_q;

    // dupName_10_new_data_x(LOGICAL,256)
    assign dupName_10_new_data_x_q = dupName_10_mask0_x_q | mask1_q;

    // local_size_reg_2_buffered(REG,112)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_10_can_write_x_q == 1'b1)
        begin
            local_size_reg_2_buffered_q <= dupName_10_new_data_x_q;
        end
    end

    // local_size_reg_2(REG,111)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            local_size_reg_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            local_size_reg_2_q <= local_size_reg_2_buffered_q;
        end
    end

    // local_size_2(GPOUT,142)
    assign local_size_2 = local_size_reg_2_q;

    // dupName_5_mask0_x(LOGICAL,224)
    assign dupName_5_mask0_x_q = bit_enable_top_bar_b & num_groups_reg_0_buffered_q;

    // dupName_5_new_data_x(LOGICAL,226)
    assign dupName_5_new_data_x_q = dupName_5_mask0_x_q | dupName_1_mask1_x_q;

    // num_groups_reg_0_buffered(REG,124)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_0_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_7_can_write_x_q == 1'b1)
        begin
            num_groups_reg_0_buffered_q <= dupName_5_new_data_x_q;
        end
    end

    // num_groups_reg_0(REG,123)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            num_groups_reg_0_q <= num_groups_reg_0_buffered_q;
        end
    end

    // num_groups_0(GPOUT,143)
    assign num_groups_0 = num_groups_reg_0_q;

    // dupName_8_address_ref_x(CONSTANT,240)
    assign dupName_8_address_ref_x_q = $unsigned(5'b01001);

    // dupName_8_NO_NAME_x(LOGICAL,239)
    assign dupName_8_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_8_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_8_can_write_x(LOGICAL,241)
    assign dupName_8_can_write_x_q = dupName_8_NO_NAME_x_q & avs_cra_write;

    // dupName_6_mask0_x(LOGICAL,230)
    assign dupName_6_mask0_x_q = bit_enable_bottom_bar_b & num_groups_reg_1_buffered_q;

    // dupName_6_new_data_x(LOGICAL,232)
    assign dupName_6_new_data_x_q = dupName_6_mask0_x_q | mask1_q;

    // num_groups_reg_1_buffered(REG,126)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_1_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_8_can_write_x_q == 1'b1)
        begin
            num_groups_reg_1_buffered_q <= dupName_6_new_data_x_q;
        end
    end

    // num_groups_reg_1(REG,125)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            num_groups_reg_1_q <= num_groups_reg_1_buffered_q;
        end
    end

    // num_groups_1(GPOUT,144)
    assign num_groups_1 = num_groups_reg_1_q;

    // dupName_7_mask0_x(LOGICAL,236)
    assign dupName_7_mask0_x_q = bit_enable_top_bar_b & num_groups_reg_2_buffered_q;

    // dupName_7_new_data_x(LOGICAL,238)
    assign dupName_7_new_data_x_q = dupName_7_mask0_x_q | dupName_1_mask1_x_q;

    // num_groups_reg_2_buffered(REG,128)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_2_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_8_can_write_x_q == 1'b1)
        begin
            num_groups_reg_2_buffered_q <= dupName_7_new_data_x_q;
        end
    end

    // num_groups_reg_2(REG,127)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            num_groups_reg_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            num_groups_reg_2_q <= num_groups_reg_2_buffered_q;
        end
    end

    // num_groups_2(GPOUT,145)
    assign num_groups_2 = num_groups_reg_2_q;

    // will_be_started(LOGICAL,193)
    assign will_be_started_q = start_NO_SHIFT_REG_q | started_NO_SHIFT_REG_q;

    // next_started_value(LOGICAL,117)
    assign next_started_value_q = will_be_started_q & not_finished_q;

    // started_NO_SHIFT_REG(REG,182)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            started_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            started_NO_SHIFT_REG_q <= next_started_value_q;
        end
    end

    // not_started(LOGICAL,122)
    assign not_started_q = ~ (started_NO_SHIFT_REG_q);

    // start_is_or_going_high(LOGICAL,180)
    assign start_is_or_going_high_q = start_from_buffered_start_NO_SHIFT_REG_q | start_NO_SHIFT_REG_q;

    // next_start_reg_value(LOGICAL,116)
    assign next_start_reg_value_q = start_is_or_going_high_q & not_started_q;

    // start_NO_SHIFT_REG(REG,175)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            start_NO_SHIFT_REG_q <= $unsigned(1'b0);
        end
        else
        begin
            start_NO_SHIFT_REG_q <= next_start_reg_value_q;
        end
    end

    // pipe_reg0_start(REG,152)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg0_start_q <= start_NO_SHIFT_REG_q;
        end
    end

    // pipe_reg1_start(REG,154)
    always @ (posedge clock)
    begin
        if (0)
        begin
        end
        else
        begin
            pipe_reg1_start_q <= pipe_reg0_start_q;
        end
    end

    // start(GPOUT,146)
    assign start = pipe_reg1_start_q;

    // status(GPOUT,147)
    assign status = status_NO_SHIFT_REG_q;

    // dupName_5_address_ref_x(CONSTANT,222)
    assign dupName_5_address_ref_x_q = $unsigned(5'b00110);

    // dupName_5_NO_NAME_x(LOGICAL,221)
    assign dupName_5_NO_NAME_x_q = $unsigned(avs_cra_address == dupName_5_address_ref_x_q ? 1'b1 : 1'b0);

    // dupName_5_can_write_x(LOGICAL,223)
    assign dupName_5_can_write_x_q = dupName_5_NO_NAME_x_q & avs_cra_write;

    // dupName_0_mask0_x(LOGICAL,202)
    assign dupName_0_mask0_x_q = bit_enable_bottom_bar_b & work_dim_NO_SHIFT_REG_buffered_q;

    // dupName_0_new_data_x(LOGICAL,204)
    assign dupName_0_new_data_x_q = dupName_0_mask0_x_q | mask1_q;

    // work_dim_NO_SHIFT_REG_buffered(REG,195)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            work_dim_NO_SHIFT_REG_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_5_can_write_x_q == 1'b1)
        begin
            work_dim_NO_SHIFT_REG_buffered_q <= dupName_0_new_data_x_q;
        end
    end

    // work_dim_NO_SHIFT_REG(REG,194)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            work_dim_NO_SHIFT_REG_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            work_dim_NO_SHIFT_REG_q <= work_dim_NO_SHIFT_REG_buffered_q;
        end
    end

    // work_dim(GPOUT,148)
    assign work_dim = work_dim_NO_SHIFT_REG_q;

    // dupName_1_mask0_x(LOGICAL,207)
    assign dupName_1_mask0_x_q = bit_enable_top_bar_b & workgroup_size_NO_SHIFT_REG_buffered_q;

    // dupName_1_new_data_x(LOGICAL,209)
    assign dupName_1_new_data_x_q = dupName_1_mask0_x_q | dupName_1_mask1_x_q;

    // workgroup_size_NO_SHIFT_REG_buffered(REG,197)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            workgroup_size_NO_SHIFT_REG_buffered_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (dupName_5_can_write_x_q == 1'b1)
        begin
            workgroup_size_NO_SHIFT_REG_buffered_q <= dupName_1_new_data_x_q;
        end
    end

    // workgroup_size_NO_SHIFT_REG(REG,196)
    always @ (posedge clock)
    begin
        if (!resetn)
        begin
            workgroup_size_NO_SHIFT_REG_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (start_from_buffered_start_NO_SHIFT_REG_q == 1'b1)
        begin
            workgroup_size_NO_SHIFT_REG_q <= workgroup_size_NO_SHIFT_REG_buffered_q;
        end
    end

    // workgroup_size(GPOUT,149)
    assign workgroup_size = workgroup_size_NO_SHIFT_REG_q;

endmodule
