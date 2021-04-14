onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/sys_clk_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/periph_clk_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/rstn_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_data_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_addr_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_valid_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rwn_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_ready_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_data_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_startaddr_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_size_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_continuous_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_en_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_clr_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_en_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_pending_i
add wave -noupdate -expand -group i2s_top -radix hexadecimal /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_curr_addr_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/cfg_rx_bytes_left_i
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/data_rx_datasize_o
add wave -noupdate -expand -group i2s_top -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/data_rx_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/data_rx_valid_o
add wave -noupdate -expand -group i2s_top /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/data_rx_ready_i
add wave -noupdate -expand -group i2s_top -radix unsigned -childformat {{{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[31]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[30]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[29]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[28]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[27]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[26]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[25]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[24]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[23]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[22]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[21]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[20]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[19]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[18]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[17]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[16]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[15]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[14]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[13]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[12]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[11]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[10]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[9]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[8]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[7]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[6]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[5]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[4]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[3]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[2]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[1]} -radix unsigned} {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[0]} -radix unsigned}} -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[31]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[30]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[29]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[28]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[27]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[26]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[25]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[24]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[23]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[22]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[21]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[20]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[19]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[18]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[17]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[16]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[15]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[14]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[13]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[12]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[11]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[10]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[9]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[8]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[7]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[6]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[5]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[4]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[3]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[2]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[1]} {-radix unsigned} {/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc[0]} {-radix unsigned}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc
add wave -noupdate -expand -group i2s_top -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc_valid
add wave -noupdate -expand -group i2s_top -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_rx_dc_ready
add wave -noupdate -expand -group i2s_top -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_tx_dc
add wave -noupdate -expand -group i2s_top -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_tx_dc_valid
add wave -noupdate -expand -group i2s_top -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/s_data_tx_dc_ready
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/rstn_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/dft_test_mode_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/dft_cg_enable_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/pdm_clk_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/slave_clk_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/slave_ws_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/master_clk_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/master_ws_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/pad_pdm_clk_o
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/pad_slave_sd0_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/pad_slave_sd1_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/pad_master_sd0_o
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/pad_master_sd1_o
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_en_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_en_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_dsp_en_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_dsp_setup_time_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_dsp_mode_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_dsp_offset_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_dsp_en_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_dsp_setup_time_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_dsp_mode_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_dsp_offset_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_rx_continuous_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_i2s_lsb_first_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_i2s_2ch_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_i2s_bits_word_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_i2s_words_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_pdm_en_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_pdm_mode_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_pdm_decimation_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_slave_pdm_shift_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_i2s_lsb_first_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_i2s_2ch_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_i2s_bits_word_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/cfg_master_i2s_words_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/fifo_rx_data_o
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/fifo_rx_data_valid_o
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/fifo_rx_data_ready_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/fifo_tx_data_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/fifo_tx_data_valid_i
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/fifo_tx_data_ready_o
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_pdm_fifo_data
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_pdm_fifo_data_valid
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_pdm_fifo_data_ready
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_slv_fifo_data
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_slv_fifo_data_valid
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_slv_fifo_data_ready
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_slv_en
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_slv_dsp_en
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_mst_en
add wave -noupdate -group i2s_txrx /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/s_i2s_mst_dsp_en
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/sck_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/rstn_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/i2s_ch0_o
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/i2s_ch1_o
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/i2s_ws_i
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_data_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_data_valid_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_data_ready_o
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/fifo_err_o
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_en_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_2ch_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_num_bits_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_num_word_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_lsb_first_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_master_dsp_mode_i
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/cfg_master_dsp_offset_i
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_shiftreg_ch0
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_shiftreg_ch1
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_shiftreg_ch0
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_shiftreg_ch1
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_shiftreg_shadow
add wave -noupdate -group i2s_dsp_tx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_shiftreg_shadow
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/data_ready
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_sample_sr0
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_sample_sr1
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_sample_swd
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/set_offset
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/en_offset
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/clear_offset
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/check_offset
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_count_bit
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/r_count_offset
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_word_done
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/s_word_done_pre
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/state
add wave -noupdate -group i2s_dsp_tx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_master/next_state
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/sck_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/rstn_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/i2s_ch0_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/i2s_ch1_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/i2s_ws_i
add wave -noupdate -expand -group i2s_dsp_rx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_data_o
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_data_valid_o
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_data_ready_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/fifo_err_o
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_en_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_2ch_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_num_bits_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_num_word_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_lsb_first_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_rx_continuous_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_slave_dsp_mode_i
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/cfg_slave_dsp_offset_i
add wave -noupdate -expand -group i2s_dsp_rx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch0
add wave -noupdate -expand -group i2s_dsp_rx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch1
add wave -noupdate -expand -group i2s_dsp_rx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch0_shadow
add wave -noupdate -expand -group i2s_dsp_rx_channel -radix unsigned /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_shiftreg_ch1_shadow
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_count_offset
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_count_bit
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/start
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/set_counter
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_ch0_valid
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/r_ch1_valid
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/state
add wave -noupdate -expand -group i2s_dsp_rx_channel /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_i2s_txrx/i_i2s_dsp_slave/next_state
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
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/sck_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/rstn_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_ws_en_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_num_bits_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_num_words_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_dsp_setup_time_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/cfg_dsp_mode_i
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/ws_o
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/limit
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/state
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/next_state
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/count
add wave -noupdate -group ws_dsp_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_slave_gen/set
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/sck_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/rstn_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_ws_en_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_num_bits_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_num_words_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_dsp_setup_time_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/cfg_dsp_mode_i
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/ws_o
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/limit
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/state
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/next_state
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/count
add wave -noupdate -group ws_dsp_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_ws_dsp_master_gen/set
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/clk_i
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/rstn_i
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/test_mode_i
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/sck_o
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/cfg_clk_en_i
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/cfg_clk_en_o
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/cfg_div_i
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_counter
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_clk
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_sampled_config
add wave -noupdate -group clk_master_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen0/r_clock_en
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/clk_i
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/rstn_i
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/test_mode_i
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/sck_o
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/cfg_clk_en_i
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/cfg_clk_en_o
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/cfg_div_i
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_counter
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_clk
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_sampled_config
add wave -noupdate -group clk_slave_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/i_clkgen1/r_clock_en
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/clk_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/rstn_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/dft_test_mode_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/dft_cg_enable_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_slave_sck_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_slave_sck_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_slave_sck_oe
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_slave_ws_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_slave_ws_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_slave_ws_oe
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_master_sck_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_master_sck_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_master_sck_oe
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_master_ws_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_master_ws_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pad_master_ws_oe
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/master_en_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/slave_en_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pdm_en_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/pdm_clk_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_div_0_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_div_1_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_slave_dsp_en_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_slave_dsp_setup_time_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_slave_dsp_mode_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_master_dsp_en_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_master_dsp_setup_time_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_master_dsp_mode_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/master_ready_to_send
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_word_size_0_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_word_num_0_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_word_size_1_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/cfg_word_num_1_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/sel_master_num_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/sel_master_ext_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/sel_slave_num_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/sel_slave_ext_i
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/clk_pdm_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/clk_master_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/clk_slave_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/ws_master_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/ws_slave_o
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_gen_0
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_gen_1
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_gen_0_en
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_gen_1_en
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_int_master
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_int_slave
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_ext_master
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_ext_slave
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_master
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_clk_slave
add wave -noupdate -group clkws_gen /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_i2s_udma/i_clkws_gen/s_sync_ws_slv_en
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_wen_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_req_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_gnt_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_addr_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_be_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_wdata_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_rvalid_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_ro_rdata_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_wen_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_req_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_gnt_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_addr_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_wdata_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_be_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_rvalid_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/L2_wo_rdata_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/dft_test_mode_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/dft_cg_enable_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sys_clk_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sys_resetn_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/periph_clk_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_paddr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_pwdata
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_pwrite
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_psel
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_penable
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_prdata
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_pready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/udma_apb_pslverr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/events_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/event_valid_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/event_data_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/event_ready_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/spi_clk
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/spi_csn
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/spi_oen
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/spi_sdo
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/spi_sdi
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2c_scl_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2c_scl_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2c_scl_oe
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2c_sda_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2c_sda_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2c_sda_oe
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/cam_clk_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/cam_data_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/cam_hsync_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/cam_vsync_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/uart_rx_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/uart_tx_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_clk_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_cmd_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_cmd_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_cmd_oen_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_data_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_data_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/sdio_data_oen_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_sd0_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_sd1_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_ws_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_ws_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_ws_oe
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_sck_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_sck_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_slave_sck_oe
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_sd0_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_sd1_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_sck_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_sck_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_sck_oe
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_ws_i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_ws_o
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i2s_master_ws_oe
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_cfg_startaddr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_cfg_size
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_cfg_continuous
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_cfg_en
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_cfg_clr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_req
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_gnt
add wave -noupdate -expand -group udma -radix unsigned -childformat {{{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_data[6]} -radix unsigned}} -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_data[6]} {-radix unsigned}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_data
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_valid
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_ready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_datasize
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_destination
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_events
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_en
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_pending
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_curr_addr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ch_bytes_left
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_startaddr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_size
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_continuous
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_en
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_clr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_stream
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_cfg_stream_id
add wave -noupdate -expand -group udma -childformat {{{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_data[5]} -radix unsigned}} -expand -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_data[5]} {-radix unsigned}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_data
add wave -noupdate -expand -group udma -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_valid
add wave -noupdate -expand -group udma -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_ready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_datasize
add wave -noupdate -expand -group udma -childformat {{{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_destination[5]} -radix unsigned}} -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_destination[5]} {-radix unsigned}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_destination
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_events
add wave -noupdate -expand -group udma -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_en
add wave -noupdate -expand -group udma -expand /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_pending
add wave -noupdate -expand -group udma -radix unsigned -childformat {{{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_curr_addr[5]} -radix unsigned}} -expand -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_curr_addr[5]} {-radix unsigned}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_curr_addr
add wave -noupdate -expand -group udma -childformat {{{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_bytes_left[5]} -radix unsigned}} -expand -subitemconfig {{/tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_bytes_left[5]} {-radix unsigned}} /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ch_bytes_left
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_addr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_datasize
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_destination
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_stream
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_stream_id
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_sot
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_eot
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_valid
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_data
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rx_ext_ready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_req
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_datasize
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_destination
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_addr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_gnt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_valid
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_data
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_tx_ext_ready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_stream_data
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_stream_datasize
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_stream_valid
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_stream_sot
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_stream_eot
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_stream_ready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_events
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_rf_event
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_clk_periphs_core
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_clk_periphs_per
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_periph_data_to
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_periph_addr
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_periph_rwn
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_periph_data_from
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_periph_valid
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_periph_ready
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_spi_eot
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_i2c_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_uart_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_trigger_events
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_cam_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_i2s_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_i2c1_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_filter_eot_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_filter_act_evt
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_sdio_eot
add wave -noupdate -expand -group udma /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/s_sdio_err
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/sys_clk_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/per_clk_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/dft_cg_enable_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/HRESETn
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PADDR
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PWDATA
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PWRITE
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PSEL
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PENABLE
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PRDATA
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PREADY
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/PSLVERR
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/event_valid_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/event_data_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/event_ready_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/event_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_per_clk_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_sys_clk_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_data_to_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_addr_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_rwn_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_data_from_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_valid_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/periph_ready_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_l2_req_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_l2_gnt_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_l2_addr_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_l2_be_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_l2_wdata_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_l2_req_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_l2_gnt_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_l2_addr_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_l2_rdata_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_l2_rvalid_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/stream_data_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/stream_datasize_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/stream_valid_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/stream_sot_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/stream_eot_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/stream_ready_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_valid_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_data_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_datasize_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_destination_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_ready_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_events_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_en_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_pending_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_curr_addr_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_bytes_left_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_startaddr_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_size_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_continuous_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_en_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_stream_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_stream_id_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_lin_cfg_clr_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_addr_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_datasize_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_destination_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_stream_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_stream_id_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_sot_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_eot_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_valid_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_data_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/rx_ext_ready_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_req_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_gnt_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_valid_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_data_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_ready_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_datasize_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_destination_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_events_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_en_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_pending_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_curr_addr_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_bytes_left_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_cfg_startaddr_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_cfg_size_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_cfg_continuous_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_cfg_en_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_lin_cfg_clr_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_req_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_datasize_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_destination_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_addr_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_gnt_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_valid_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_data_o
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/tx_ext_ready_i
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_req
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_addr
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_datasize
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_gnt
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_valid
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_data
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ch_ready
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_cfg_en
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_cfg_addr
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_cfg_buffsize
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_cfg_datasize
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_req
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_datasize
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_dest
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_addr
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_gnt
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_valid
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_data
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_ready
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_tx_ext_events
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_data_to
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_addr
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_rwn
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_data_from
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_valid
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_ready
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_ready_from_cgunit
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_periph_data_from_cgunit
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_cg_value
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_clk_core
add wave -noupdate -group udmacore /tb_pulp/i_dut/soc_domain_i/pulp_soc_i/soc_peripherals_i/i_udma/i_udmacore/s_clk_core_en
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11361583976 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 664
configure wave -valuecolwidth 88
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
WaveRestoreZoom {11325289494 ps} {11366664342 ps}
