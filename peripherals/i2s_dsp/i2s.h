
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
	
	
	void configure_i2s_dsp_slave(uint32_t rx_addr,uint32_t size, uint32_t lsb_first, uint32_t num_bit,uint32_t sel_clk, uint32_t num_words, uint32_t dsp_setup, uint32_t dsp_mode, uint32_t dsp_offset, uint32_t clk_freq){
       int u;
       uint32_t reg=0;
       uint16_t clk_div = 0; 
       
       uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));
       
       //write RX_SADDR register: it sets the L2 start address 
       udma_i2s_i2s_rx_saddr_set(udma_i2s_channel_base, (uint16_t)rx_addr);
		 
	   //write RX_SIZE register: it sets the buffer syze in bytes
       udma_i2s_i2s_rx_size_set(udma_i2s_channel_base, size);
       
       //Disable pdm
       udma_i2s_i2s_pdm_setup_set(udma_i2s_channel_base, 0x00000000);

       clk_div= ((pos_freq_domains[PI_FREQ_DOMAIN_PERIPH]) / (clk_freq*2))-1;     
       
       if(dsp_setup>1)
          dsp_setup= ((clk_freq*2)/ dsp_setup)-1;

       reg|= 1<<UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_EN_BIT | dsp_offset<<UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_OFFSET_BIT | dsp_mode<< UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_MODE_BIT | dsp_setup;
       
       // write DSP_SETUP register for TDM
       udma_i2s_i2s_slv_dsp_setup_set(udma_i2s_channel_base, reg);

       reg=0;
       reg|= 1<< UDMA_I2S_I2S_SLV_SETUP_SLAVE_EN_BIT;
       
       /*if (two_ch == 1)
          reg|= 1 << UDMA_I2S_I2S_SLV_SETUP_SLAVE_2CH_BIT;*/
        
       if (lsb_first == 1)
          reg|= 1 << UDMA_I2S_I2S_SLV_SETUP_SLAVE_LSB_BIT;
       
       reg|=  (num_bit-1) << UDMA_I2S_I2S_SLV_SETUP_SLAVE_BITS_BIT | (num_words-1)<<0;
       
       //write SLV_SETUP register:
       udma_i2s_i2s_slv_setup_set(udma_i2s_channel_base, 0x00000000|reg);
            
       // get CLKCFG_SETUP
       reg=udma_i2s_i2s_clkcfg_setup_get(udma_i2s_channel_base);
       
       reg|= sel_clk<<UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_NUM_BIT| 1<< UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_CLK_EN_BIT | clk_div << UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_CLK_DIV_BIT;
       
       //write CLKCFG_SETUP 
       udma_i2s_i2s_clkcfg_setup_set(udma_i2s_channel_base, reg);
             
       //write RX_CFG register and start transaction: (32 bit - continuous mode)
       udma_i2s_i2s_rx_cfg_set(udma_i2s_channel_base, 0x00000015);
       
	}
	

	void configure_i2s_dsp_master(uint32_t tx_addr,uint32_t size, uint32_t lsb_first, uint32_t num_bit, uint32_t sel_clk, uint32_t num_words, uint32_t dsp_setup, uint32_t dsp_mode, uint32_t dsp_offset, uint32_t clk_freq){
       int u;
       uint32_t reg=0;
       uint16_t clk_div = 0; 
       
       uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));
       
       //write TX_SADDR register: it sets the L2 start address 
       udma_i2s_i2s_tx_saddr_set(udma_i2s_channel_base, (uint16_t)tx_addr);
		 
	   //write TX_SIZE register: it sets the buffer syze in bytes
       udma_i2s_i2s_tx_size_set(udma_i2s_channel_base, size);
       
       
       clk_div= (pos_freq_domains[PI_FREQ_DOMAIN_PERIPH] / (clk_freq*2))-1;     
       
       if(dsp_setup>1)
          dsp_setup= ((clk_freq *2)/ dsp_setup)-1;

       
       reg|= 1<<UDMA_I2S_I2S_MST_DSP_SETUP_DSP_EN_BIT | dsp_offset<<UDMA_I2S_I2S_MST_DSP_SETUP_DSP_OFFSET_BIT | dsp_mode<< UDMA_I2S_I2S_MST_DSP_SETUP_DSP_MODE_BIT | (dsp_setup);
       
       // write DSP_SETUP
       udma_i2s_i2s_mst_dsp_setup_set(udma_i2s_channel_base, reg);

       reg=0;

       reg|= 1<< UDMA_I2S_I2S_MST_SETUP_MASTER_EN_BIT;
       
       /*if (two_ch == 1)
          reg|= 1 << UDMA_I2S_I2S_MST_SETUP_MASTER_2CH_BIT;*/
        
       if (lsb_first == 1)
          reg|= 1 << UDMA_I2S_I2S_MST_SETUP_MASTER_LSB_BIT;
       
       reg|=  (num_bit-1) << UDMA_I2S_I2S_MST_SETUP_MASTER_BITS_BIT | (num_words-1)<<0;
       
       //write MST_SETUP register:
       udma_i2s_i2s_mst_setup_set(udma_i2s_channel_base, reg);
       
       reg=0;
          
       reg=udma_i2s_i2s_clkcfg_setup_get(udma_i2s_channel_base);
       reg|= sel_clk<<UDMA_I2S_I2S_CLKCFG_SETUP_MASTER_NUM_BIT| 1<< UDMA_I2S_I2S_CLKCFG_SETUP_MASTER_CLK_EN_BIT | (clk_div) << UDMA_I2S_I2S_CLKCFG_SETUP_MASTER_CLK_DIV_BIT;
       
       //write CLKCFG_SETUP 
       udma_i2s_i2s_clkcfg_setup_set(udma_i2s_channel_base, reg);
             
       //write TX_CFG register: (32 bit - continuous mode)
       udma_i2s_i2s_tx_cfg_set(udma_i2s_channel_base, 0x00000015);
       
	}

	void disable_i2s_dsp_master(){
		uint32_t reg=0;
		int u;
		
		uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));

		//write TX_CFG register: (send clear)
        udma_i2s_i2s_tx_cfg_set(udma_i2s_channel_base, 0x00000044);

        reg= udma_i2s_i2s_mst_setup_get(udma_i2s_channel_base);
        reg&= 0<< UDMA_I2S_I2S_MST_SETUP_MASTER_EN_BIT;

		//write MST_SETUP register:
        udma_i2s_i2s_mst_setup_set(udma_i2s_channel_base, reg);

        reg= udma_i2s_i2s_mst_dsp_setup_get(udma_i2s_channel_base);
        reg= 0<<UDMA_I2S_I2S_MST_DSP_SETUP_DSP_EN_BIT;

        // write DSP_SETUP
        udma_i2s_i2s_mst_dsp_setup_set(udma_i2s_channel_base, reg);

	}

	void disable_i2s_master_clk(){
		uint32_t reg=0;
		int u;
		
		uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));
		
		reg=udma_i2s_i2s_clkcfg_setup_get(udma_i2s_channel_base);
        reg|=  0<< UDMA_I2S_I2S_CLKCFG_SETUP_MASTER_CLK_EN_BIT ;

        //write CLKCFG_SETUP 
        udma_i2s_i2s_clkcfg_setup_set(udma_i2s_channel_base, reg);

	}

	void disable_i2s_dsp_slave(){
		uint32_t reg=0;
		int u;

		uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));

		//write RX_CFG register:  (send clear)
        udma_i2s_i2s_rx_cfg_set(udma_i2s_channel_base, 0x00000044);

        reg= udma_i2s_i2s_slv_setup_get(udma_i2s_channel_base);
        reg= 0<< UDMA_I2S_I2S_SLV_SETUP_SLAVE_EN_BIT;

		//write MST_SETUP register:
        udma_i2s_i2s_slv_setup_set(udma_i2s_channel_base, reg);

        reg= udma_i2s_i2s_slv_dsp_setup_get(udma_i2s_channel_base);
        reg= 0<<UDMA_I2S_I2S_SLV_DSP_SETUP_DSP_EN_BIT;

        // write DSP_SETUP
        udma_i2s_i2s_slv_dsp_setup_set(udma_i2s_channel_base, reg);
	
	}

	void disable_i2s_slave_clk(){
		uint32_t reg=0;
		int u;
		
		uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));
				
		reg=udma_i2s_i2s_clkcfg_setup_get(udma_i2s_channel_base);
        reg|=  0<< UDMA_I2S_I2S_CLKCFG_SETUP_SLAVE_CLK_EN_BIT ;

        //write CLKCFG_SETUP 
        udma_i2s_i2s_clkcfg_setup_set(udma_i2s_channel_base, reg);

	}

	void reset_i2s_registers(){
		uint32_t reg=0;
		int u;
		
		uint32_t udma_i2s_channel_base = hal_udma_channel_base(UDMA_CHANNEL_ID(ARCHI_UDMA_I2S_ID(u)));

		udma_i2s_i2s_mst_dsp_setup_set(udma_i2s_channel_base, reg);
		udma_i2s_i2s_mst_setup_set(udma_i2s_channel_base, reg);
		udma_i2s_i2s_slv_dsp_setup_set(udma_i2s_channel_base, reg);
		udma_i2s_i2s_slv_setup_set(udma_i2s_channel_base, reg);
		udma_i2s_i2s_pdm_setup_set(udma_i2s_channel_base, reg);
		udma_i2s_i2s_clkcfg_setup_set(udma_i2s_channel_base, reg);
	}

	static inline void wait_cycles(const unsigned cycles){
	  /**
	   * Each iteration of the loop below will take four cycles on RI5CY (one for
	   * `addi` and three for the taken `bnez`; if the instructions hit in the
	   * I$).  Thus, we let `i` count the number of remaining loop iterations and
	   * initialize it to a fourth of the number of clock cyles.  With this
	   * initialization, we must not enter the loop if the number of clock cycles
	   * is less than four, because this will cause an underflow on the first
	   * subtraction.
	   */
	  register unsigned threshold;
	  asm volatile("li %[threshold], 4" : [threshold] "=r" (threshold));
	  asm volatile goto("ble %[cycles], %[threshold], %l2"
	          : /* no output */
	          : [cycles] "r" (cycles), [threshold] "r" (threshold)
	          : /* no clobbers */
	          : __wait_cycles_end);
	  register unsigned i = cycles >> 2;
	__wait_cycles_start:
	  // Decrement `i` and loop if it is not yet zero.
	  asm volatile("addi %0, %0, -1" : "+r" (i));
	  asm volatile goto("bnez %0, %l1"
	          : /* no output */
	          : "r" (i)
	          : /* no clobbers */
	          : __wait_cycles_start);
	__wait_cycles_end:
	  return;
	}

#endif
	
