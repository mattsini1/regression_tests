
#ifndef I2S_H 
#define I2S_H 

	#define REG_PADFUN0_OFFSET 0x10
	#define REG_PADFUN1_OFFSET 0x14
	#define REG_PADFUN2_OFFSET 0x18
	#define REG_PADFUN3_OFFSET 0x1C

	#define REG_PADCFG0_OFFSET  0x24
	#define REG_PADCFG1_OFFSET  0x28
	#define REG_PADCFG2_OFFSET  0x2C
	#define REG_PADCFG3_OFFSET  0x30
	#define REG_PADCFG4_OFFSET  0x34
	#define REG_PADCFG5_OFFSET  0x38
	#define REG_PADCFG6_OFFSET  0x3C
	#define REG_PADCFG7_OFFSET  0x40
	#define REG_PADCFG8_OFFSET  0x44
	#define REG_PADCFG9_OFFSET  0x48
	#define REG_PADCFG10_OFFSET 0x4C
	#define REG_PADCFG11_OFFSET 0x50
	#define REG_PADCFG12_OFFSET 0x54
	#define REG_PADCFG13_OFFSET 0x58
	#define REG_PADCFG14_OFFSET 0x5C
	#define REG_PADCFG15_OFFSET 0x60

	#define OUT 1
	#define IN  0
	
	
	
	
	int pad_fun_offset[4] = {REG_PADFUN0_OFFSET,REG_PADFUN1_OFFSET,REG_PADFUN2_OFFSET,REG_PADFUN3_OFFSET};
	//int pad_cfg_offset[16] = {REG_PADCFG0_OFFSET,REG_PADCFG1_OFFSET,REG_PADCFG2_OFFSET,REG_PADCFG3_OFFSET,REG_PADCFG4_OFFSET,REG_PADCFG5_OFFSET,REG_PADCFG6_OFFSET,REG_PADCFG7_OFFSET,REG_PADCFG8_OFFSET,REG_PADCFG9_OFFSET,REG_PADCFG10_OFFSET,REG_PADCFG11_OFFSET,REG_PADCFG12_OFFSET,REG_PADCFG13_OFFSET,REG_PADCFG14_OFFSET,REG_PADCFG15_OFFSET};
	
	uint32_t configure_gpio(uint32_t number, uint32_t direction){
	  
	  uint32_t which_reg_fun = number / 16; //select the correct register 
	  uint32_t address = ARCHI_APB_SOC_CTRL_ADDR + pad_fun_offset[which_reg_fun];
	
	  //--- set alternate 1 on GPIO
	  uint32_t value_wr = pulp_read32(address);
	  value_wr |= (1 << ((number - which_reg_fun*16)*2));
	  pulp_write32(address, value_wr);
	
	  //--- set GPIO
	  if(number < 32)
	  {
	    if (direction == OUT)
	    {
	      //--- enable GPIO
	      address = ARCHI_GPIO_ADDR + GPIO_GPIOEN_OFFSET;
	      value_wr = pulp_read32(address); 
	      value_wr &= ~(1 << number);
	      pulp_write32(address, value_wr);
	      //--- set direction
	      address = ARCHI_GPIO_ADDR + GPIO_PADDIR_OFFSET;
	      pulp_write32(address, value_wr);
	    }else if (direction == IN){
	      //--- enable GPIO
	      address = ARCHI_GPIO_ADDR + GPIO_GPIOEN_OFFSET;
	      value_wr = pulp_read32(address); 
	      value_wr |= (1 << number);
	      pulp_write32(address, value_wr);
	      //--- set direction
	      address = ARCHI_GPIO_ADDR + GPIO_PADDIR_OFFSET;
	      pulp_write32(address, value_wr);
	    }
	  }else{  
	    if (direction == OUT)
	    {
	      //--- enable GPIO
	      address = ARCHI_GPIO_ADDR + GPIO_GPIOEN_32_63_OFFSET;
	      value_wr = pulp_read32(address); 
	      value_wr &= ~(1 << (number-32));
	      pulp_write32(address, value_wr);
	      //--- set direction
	      address = ARCHI_GPIO_ADDR + GPIO_PADDIR_32_63_OFFSET;
	      pulp_write32(address, value_wr);
	    }else if (direction == IN){
	      //--- enable GPIO
	      address = ARCHI_GPIO_ADDR + GPIO_GPIOEN_32_63_OFFSET;
	      value_wr = pulp_read32(address); 
	      value_wr |= (1 << (number-32));
	      pulp_write32(address, value_wr);
	      //--- set direction
	      address = ARCHI_GPIO_ADDR + GPIO_PADDIR_32_63_OFFSET;
	      pulp_write32(address, value_wr);
	    }
	  }
	
	  while(pulp_read32(address) != value_wr);
	}
	
	uint32_t set_gpio(uint32_t number, uint32_t value){
	  uint32_t value_wr;
	  uint32_t address;
	  if (number < 32)
	  {
	    address = ARCHI_GPIO_ADDR + GPIO_PADOUT_OFFSET;
	    value_wr = pulp_read32(address);
	    if (value == 1)
	     {
	      value_wr |= (1 << (number));
	     }else{
	      value_wr &= ~(1 << (number));
	     }
	    pulp_write32(address, value_wr);
	  }else{
	    address = ARCHI_GPIO_ADDR + GPIO_PADOUT_32_63_OFFSET;
	    value_wr = pulp_read32(address); 
	    if (value == 1)
	     {
	      value_wr |= (1 << (number % 32));
	     }else{
	      value_wr &= ~(1 << (number % 32));
	     }
	    pulp_write32(address, value_wr);
	  }
	
	  while(pulp_read32(address) != value_wr);
	}
	
	uint32_t get_gpio(uint32_t number){
	  uint32_t value_rd;
	  uint32_t address;
	  if (number < 32)
	  {
	    address = ARCHI_GPIO_ADDR + GPIO_PADIN_OFFSET;
	    value_rd = pulp_read32(address); 
	  }else{
	    address = ARCHI_GPIO_ADDR + GPIO_PADIN_32_63_OFFSET;
	    value_rd = pulp_read32(address); 
	  }
	  return value_rd & (1 << (number % 32));
	}
	
	static void i2s_freq_setup(int channel, int baudrate){
     int div =  (pos_freq_domains[PI_FREQ_DOMAIN_PERIPH] + baudrate/2) / baudrate;

     plp_uart_setup(channel - ARCHI_UDMA_UART_ID(0), 0, div-1);
    }
	
	// It configure the read operation for i2s dsp slaves
	void configure_i2s_dsp_read(uint16_t rx_addr,uint16_t size, uint16_t two_ch, uint16_t lsb_first, uint16_t num_bit, uint16_t num_words, uint16_t dsp_setup, uint16_t dsp_mode, uint16_t dsp_offset, uint32_t clk_freq){
       int u;
       uint32_t reg=0;
       uint16_t clk_div = 0; 
       
       uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));
       printf("uDMA i2s%d base channel address is: %8x\n", u,udma_i2s_channel_base);
       
       //write RX_SADDR register: it sets the L2 start address 
       udma_i2s_i2s_rx_saddr_set(udma_i2s_channel_base, (uint16_t)rx_addr);
       printf("The incoming data (from i2s peripheral) will be written starting from : %8x \n", rx_addr); 
		 
	   //write RX_SIZE register: it sets the buffer syze in bytes
       udma_i2s_i2s_rx_size_set(udma_i2s_channel_base, size);
       printf("Buffer size is set to %8x \n", size);
       
       //disable pdm
       udma_i2s_i2s_pdm_setup_set(udma_i2s_channel_base, 0x00000000);
       
       reg|= 1<< UDMA_I2S_I2S_SLV_SETUP_SLAVE_EN_BIT;
       
       if (two_ch == 1)
          reg|= 1 << UDMA_I2S_I2S_SLV_SETUP_SLAVE_2CH_BIT;
        
       if (lsb_first == 1)
          reg|= 1 << UDMA_I2S_I2S_SLV_SETUP_SLAVE_LSB_BIT;
       
       reg|=  (num_bit-1) << UDMA_I2S_I2S_SLV_SETUP_SLAVE_BITS_BIT | (num_words-1)<<0;
       
       //write SLV_SETUP register:
       udma_i2s_i2s_slv_setup_set(udma_i2s_channel_base, 0x00000000|reg);
       printf("Config Slave Setup register is set to %8x \n", udma_i2s_i2s_slv_setup_get(udma_i2s_channel_base));
       
       reg=0;

       clk_div= (pos_freq_domains[PI_FREQ_DOMAIN_PERIPH] + clk_freq/2) / clk_freq;     
       
       if(dsp_setup>1)
          dsp_setup= (clk_freq+ dsp_setup/2 )/ dsp_setup;

             
       reg|= 1<<UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_EN_BIT | dsp_offset<<UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_OFFSET_BIT | dsp_mode<< UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_MODE_BIT | (dsp_setup-1);
       
       // write DSP_SETUP
       udma_i2s_i2s_dsp_setup_set(udma_i2s_channel_base, reg);
             
       reg=0;
       reg|= 1<<UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_NUM_BIT| 1<< UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_CLK_EN_BIT | (clk_div-1) << UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_CLK_DIV_BIT;
       
       //write CLKCFG_SETUP 
       udma_i2s_i2s_clkcfg_setup_set(udma_i2s_channel_base, reg);
       printf("Config Clock register is set to %8x \n", udma_i2s_i2s_clkcfg_setup_get(udma_i2s_channel_base));
             
       //write RX_CFG register: 
       udma_i2s_i2s_rx_cfg_set(udma_i2s_channel_base, 0x00000015);
       printf("Config RX register is set to %8x \n", udma_i2s_i2s_rx_cfg_get(udma_i2s_channel_base));
       
	}
	

	

#endif
	
