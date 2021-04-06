#include <stdio.h>
#include "pulp.h"
#include "i2s.h"

//Buffer size must be specified in Bytes
#define BUFFER_SIZE 128

#define GPIO_SCK  13
#define GPIO_WS   14
#define GPIO_SD_0 15
#define GPIO_SD_1 16

#define DSP_MODE_0 0 // 0 to communicate with ICS-52000 MICROPHONES or generic DSP - WS on falling
#define DSP_MODE_1 1 // 0x01 to comunicate wit generic DSP - WS on rising
//#define DSP_MODE_2 2 // 0x10 to comunicate wit generic DSP - WS on falling

#define true 1
#define false  0

int main(){
  int rx_addr[BUFFER_SIZE];
  int val_wr, address;
  int buffer_size;
  int u=0;
  
  uint16_t num_bits,num_word, two_ch, lsb_first, dsp_offset;
  uint32_t clk_freq,dsp_setup_time;
  
  /*
      .pad_i2s0_sck       ( w_i2s0_sck         ),//13 -> 1
      .pad_i2s0_ws        ( w_i2s0_ws          ),//14 -> 1
      .pad_i2s0_sdi       ( w_i2s0_sdi         ),//15 -> 0
      .pad_i2s1_sdi       ( w_i2s1_sdi         ),//16 -> 0
  */
  
  printf("[%d, %d] Start test i2s %d\n",  get_cluster_id(), get_core_id(),u);

  //--- enable clock to i2s channels 
  plp_udma_cg_set(plp_udma_cg_get() | (0xffffff20));
    
  configure_gpio( GPIO_SCK, OUT);
  configure_gpio( GPIO_WS, OUT);
  configure_gpio( GPIO_SD_0, IN);
  configure_gpio( GPIO_SD_1, IN);
  
  
     
  //I2S CONFIGURATION STEP

   two_ch= false;
   lsb_first= false;
   num_bits = 32; // 5 bits -> max 32
   dsp_offset= 1; //5 bit -> max 32
   /* num_word is equal to the number of devices
    * 
    * NB: If you want to read from both sd lines you must have the same number of devices on both channels
    * 
    * EX: 4 microphone, 2_ch enabled -> 2 mic on SD0 - 2 mic on SD1
    * */
   

   num_word= 16;     //4 bits -> max 16
   dsp_setup_time=1; //10ms -> 100Hz
   clk_freq= 4096000; 
   buffer_size= 4*num_word;


   //reset buffer in mem
  for (int i=0; i< buffer_size; i++)
     rx_addr[i]=0;
   
   if(two_ch==true)
      num_word=num_word/2;
   
   //printf("Freq peripheral: %d\nMHz",pos_freq_domains[PI_FREQ_DOMAIN_PERIPH]);
   //printf("Freq clk_freq: %d\nMHz",clk_freq);
   
   configure_i2s_dsp_slave(rx_addr,buffer_size, two_ch, lsb_first, num_bits, num_word, dsp_setup_time, DSP_MODE_0, dsp_offset, clk_freq);
   
   for (int i=0; i< 65536; i++){
    
   }

   for (int i=0; i< 65536; i++){
    
   }

   configure_i2s_dsp_master(rx_addr,buffer_size, two_ch, lsb_first , num_bits, num_word, dsp_setup_time, DSP_MODE_0, 32, clk_freq);
   
 
   while(1){
	    printf("MIC_0 should be 8: %d\n",pulp_read32(rx_addr) );
      printf("MIC_1 should be 10: %d\n",pulp_read32(rx_addr +1) );
      printf("MIC_2 should be 12: %d\n",pulp_read32(rx_addr +2) );  
      printf("MIC_3 should be 14: %d\n",pulp_read32(rx_addr +3) ); 	  

      printf("MIC_4 should be 16: %d\n",pulp_read32(rx_addr +4) );
      printf("MIC_5 should be 18: %d\n",pulp_read32(rx_addr +5) );
      printf("MIC_6 should be 20: %d\n",pulp_read32(rx_addr +6) );  
      printf("MIC_7 should be 22: %d\n",pulp_read32(rx_addr +7) ); 

      printf("MIC_8 should be 24: %d\n",pulp_read32(rx_addr +8) );
      printf("MIC_9 should be 26: %d\n",pulp_read32(rx_addr +9) );
      printf("MIC_10 should be 28: %d\n",pulp_read32(rx_addr +10) );  
      printf("MIC_11 should be 30: %d\n",pulp_read32(rx_addr +11) );    

      printf("MIC_12 should be 32: %d\n",pulp_read32(rx_addr +12));
      printf("MIC_13 should be 34: %d\n",pulp_read32(rx_addr +13) );
      printf("MIC_14 should be 36: %d\n",pulp_read32(rx_addr +14) );  
      printf("MIC_15 should be 38: %d\n",pulp_read32(rx_addr +15) ); 
   }
  
   
  
  return 0;
}

