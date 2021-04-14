onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_sd0_i
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_sd1_i
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_sck_i
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_sck_o
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_sck_oe
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_ws_i
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_ws_o
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_slave_ws_oe
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_sd0_o
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_sd1_o
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_sck_i
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_sck_o
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_sck_oe
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_ws_i
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_ws_o
add wave -noupdate -group i2s_top_pad /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/pad_master_ws_oe
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/clk_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/periph_clk_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/rstn_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_data_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_addr_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_valid_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rwn_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_data_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_ready_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_startaddr_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_size_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_datasize_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_continuous_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_clr_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_en_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_pending_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_curr_addr_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_rx_bytes_left_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_startaddr_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_size_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_datasize_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_continuous_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_clr_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_en_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_pending_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_curr_addr_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_tx_bytes_left_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_clk_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_clk_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_pdm_clk_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_dsp_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_dsp_setup_time_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_dsp_mode_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_dsp_offset_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_dsp_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_dsp_setup_time_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_dsp_mode_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_dsp_offset_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_sel_num_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_sel_ext_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_sel_num_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_sel_ext_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_i2s_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_i2s_lsb_first_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_i2s_2ch_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_i2s_bits_word_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_i2s_words_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_pdm_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_pdm_mode_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_pdm_decimation_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_pdm_shift_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_i2s_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_i2s_lsb_first_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_i2s_2ch_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_i2s_bits_word_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_i2s_words_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_gen_clk_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_gen_clk_en_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_slave_gen_clk_div_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_gen_clk_en_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_gen_clk_en_i
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_master_gen_clk_div_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_rx_startaddr
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_rx_size
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_rx_datasize
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_rx_continuous
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_rx_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_rx_clr
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_tx_startaddr
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_tx_size
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_tx_datasize
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_tx_continuous
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_tx_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_tx_clr
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_clk_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_clk_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_master_clk_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_slave_clk_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_sel_num
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_sel_ext
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_sel_num
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_sel_ext
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_master_sel_num
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_master_sel_ext
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_slave_sel_num
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_slave_sel_ext
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_i2s_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_i2s_lsb_first
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_i2s_2ch
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_i2s_bits_word
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_i2s_words
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_pdm_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_pdm_mode
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_pdm_decimation
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_pdm_shift
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_dsp_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_dsp_setup_time
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_dsp_mode
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_dsp_offset
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_dsp_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_dsp_setup_time
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_dsp_mode
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_dsp_offset
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_i2s_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_i2s_lsb_first
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_i2s_2ch
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_i2s_bits_word
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_i2s_words
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_common_gen_clk_div
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_slave_gen_clk_div
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_master_gen_clk_div
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_common_gen_clk_div
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_slave_gen_clk_div
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_master_gen_clk_div
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_pdm_clk_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_per_pdm_clk_en
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/s_wr_addr
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/s_rd_addr
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/s_update_clk
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/r_update_clk
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/cfg_update_clk_o
add wave -noupdate -group i2s_registers /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/u_reg_if/s_update
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/sck_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/rstn_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/i2s_ch0_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/i2s_ch1_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/i2s_ws_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_data_o
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_data_valid_o
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_data_ready_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_err_o
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_en_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_2ch_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_num_bits_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_num_word_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_lsb_first_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_rx_continuous_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_slave_dsp_mode_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_slave_dsp_offset_i
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch0
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch1
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch0_shadow
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch1_shadow
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_count_offset
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_count_bit
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/start
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/set_counter
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_ch0_valid
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_ch1_valid
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/state
add wave -noupdate -group i2s_dsp_slave_rx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/next_state
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/clk_i
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/rstn_i
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/test_mode_i
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/sck_o
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/cfg_clk_en_i
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/cfg_clk_en_o
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/cfg_div_i
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_counter
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_clk
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_sampled_config
add wave -noupdate -group i2s_clkgen0_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_clock_en
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/clk_i
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/rstn_i
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/test_mode_i
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/sck_o
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/cfg_clk_en_i
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/cfg_clk_en_o
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/cfg_div_i
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_counter
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_clk
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_sampled_config
add wave -noupdate -group i2s_clkgen1_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_clock_en
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/sck_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/rstn_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_ws_en_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_num_bits_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_num_words_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_dsp_setup_time_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_dsp_mode_i
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/ws_o
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/limit
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/state
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/next_state
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/count
add wave -noupdate -group i2s_ws_dsp_gen_slave /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/set
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/sck_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/rstn_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_ws_en_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_num_bits_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_num_words_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_dsp_setup_time_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_dsp_mode_i
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/ws_o
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/limit
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/state
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/next_state
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/count
add wave -noupdate -group i2s_ws_dsp_gen_master /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/set
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/data
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/lsb_first
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/ws
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/bclk
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/dout
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/wso
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/state
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/next_state
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/count
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/set
add wave -noupdate -group mic_0 /tb_pulp/genblk6/genblk3/mic_0/tristate
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/data
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/lsb_first
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/ws
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/bclk
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/dout
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/wso
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/state
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/next_state
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/count
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/set
add wave -noupdate -group mic_1 /tb_pulp/genblk6/genblk3/mic_1/tristate
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/data
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/lsb_first
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/ws
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/bclk
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/dout
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/wso
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/state
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/next_state
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/count
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/set
add wave -noupdate -group mic_2 /tb_pulp/genblk6/genblk3/mic_2/tristate
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/data
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/lsb_first
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/ws
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/bclk
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/dout
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/wso
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/state
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/next_state
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/count
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/set
add wave -noupdate -group mic_3 /tb_pulp/genblk6/genblk3/mic_3/tristate
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/sck_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/rstn_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/i2s_ch0_o
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/i2s_ch1_o
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/i2s_ws_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_data_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_data_valid_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_data_ready_o
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_err_o
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_en_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_2ch_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_num_bits_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_num_word_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_lsb_first_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_master_dsp_mode_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_master_dsp_offset_i
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_shiftreg_ch0
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_shiftreg_ch1
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_shiftreg_ch0
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_shiftreg_ch1
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_shiftreg_shadow
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_shiftreg_shadow
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/data_ready
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_sample_sr0
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_sample_sr1
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_sample_swd
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/set_offset
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/clear_offset
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/check_offset
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_count_bit
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_count_offset
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_word_done
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_word_done_pre
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_i2s_ch0
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_i2s_ch1
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/state
add wave -noupdate -group i2s_dsp_master_tx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/next_state
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/sck_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/rstn_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/i2s_ch0_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/i2s_ch1_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/i2s_ws_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/fifo_data_o
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/fifo_data_valid_o
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/fifo_data_ready_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/fifo_err_o
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_en_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_2ch_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_num_bits_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_num_word_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_lsb_first_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_rx_continuous_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_slave_dsp_mode_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/cfg_slave_dsp_offset_i
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_shiftreg_ch0
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_shiftreg_ch1
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_shiftreg_ch0_shadow
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_shiftreg_ch1_shadow
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_count_offset
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_count_bit
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/start
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/set_counter
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_ch0_valid
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/r_ch1_valid
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/state
add wave -noupdate -expand -group generic_slave_rx /tb_pulp/genblk6/genblk2/generic_dsp_slave_0/next_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ms
update
WaveRestoreZoom {0 ps} {717 ps}
