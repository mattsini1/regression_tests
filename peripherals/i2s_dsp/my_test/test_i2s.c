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

#define USE_SLV_CLK 1 // select slave source clock and ws
#define USE_MST_CLK 0 // select master source clock and ws


#define true 1
#define false  0

#define num_test  5


int main(){
  int rx_addr[BUFFER_SIZE];
  int tx_addr[BUFFER_SIZE];
  int test[num_test];
  int buffer_size, num;
  int u=0;
  
  uint16_t num_bits,num_word, two_ch, lsb_first, dsp_slv_offset, dsp_mst_offset;
  uint32_t ws_freq, clk_freq, dsp_setup_time_slv, dsp_setup_time_mst, val_wr;
  
 
  printf("[%d, %d] Start test i2s %d\n",  get_cluster_id(), get_core_id(),u);

  //--- enable clock to i2s channels 
  plp_udma_cg_set(plp_udma_cg_get() | (0xffffff20));
    
  configure_gpio( GPIO_SCK, OUT);
  configure_gpio( GPIO_WS, OUT);
  configure_gpio( GPIO_SD_0, IN);
  configure_gpio( GPIO_SD_1, IN);
   
  /*********************************************************************************************************************
  ** NUM_WORDS : max 16 (it defines the number of slots/devices on the same channel)                                  **
  ** NUM_BITS  : max 32 for each transmission                                                                                              **
  ** DSP_OFFSET: (0 - 32 - 64 - 96 - 128 - 160 - 192 - 224 - 256 - 288 - 320 - 352 - 380 - 416 - 448 - 480 - 512)     **
  **********************************************************************************************************************                                                                                                               **
    
   WS_FREQ : 48KHz - 24KHz - 16KHz - 8KHz

  *************************************
  ** NUM_WORDS **     CLK_FREQ       **                                                                                                      
  **    1-2    **  64 x  WS_FREQ     **
  **    3-4    **  128 x  WS_FREQ    **                                                                                           
  **    5-8    **  256 x  WS_FREQ    **                                                                                             
  **    9-16   **  512 x  WS_FREQ    **
  ************************************/
   
  num_bits= 32;
  num_word= 16;

  val_wr=8;

  // set result test
  for (int i=0; i< num_test; i++){
     test[i]=0;
  }

  
  /**************************************************************************************************************************
  **                                                          IMPORTANT                                                    **                                                             
  **  If you want to syncronize both channel with the same sck and ws you must use MST_CLK for master and slave            **
  **  Otherwise you can configure the slave as you want with his SLV_CLK                                                   **                                                                                           
  **  The master must use always MST_CLK because of syncronization with the memory                                         **                                                                                             
  **                                                                                                                       **
  ***************************************************************************************************************************/  
  
  //set tx buffer
  val_wr=8;
  for (int j=0; j< num_word; j++) {
    pulp_write32(tx_addr+j, val_wr);
    val_wr+=2;
  }


  for (int i=0; i< num_test; i++) {

      if (i==0){
        printf ("***************************** TEST %d *****************************\n",i+1);
        
        num_bits= 32;
        num_word= 16;

        ws_freq= 8;
        clk_freq= (ws_freq*1000)*num_word*num_bits;
         
        dsp_setup_time_mst=0;
        dsp_setup_time_slv=0;
         
        dsp_slv_offset=0;
        dsp_mst_offset=0;

        buffer_size= 4*(num_word);

        lsb_first=1;

        configure_i2s_dsp_slave  (rx_addr,buffer_size, lsb_first , num_bits, USE_MST_CLK , num_word, dsp_setup_time_slv, DSP_MODE_1, dsp_slv_offset, clk_freq);
        configure_i2s_dsp_master (tx_addr,buffer_size, lsb_first , num_bits, USE_MST_CLK , num_word, dsp_setup_time_mst, DSP_MODE_1, dsp_mst_offset, clk_freq);  

        wait_cycles(30500);

        printf("MIC_0 should be 8: %d\n", pulp_read32(rx_addr) );
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


      if (i==1){
        

        printf ("***************************** TEST %d *****************************\n",i+1);

        
        disable_i2s_dsp_slave();
        disable_i2s_dsp_master();
        disable_i2s_clk();
        reset_i2s_registers();

        val_wr=10;
        for (int j=0; j< num_word; j++) {
          pulp_write32(tx_addr+j, val_wr);
          val_wr+=2;
        }

        num_bits= 32;
        num_word= 8;

        ws_freq= 16;
        clk_freq= (ws_freq*1000)*num_word*num_bits;
         
        dsp_setup_time_mst=0;
        dsp_setup_time_slv=0;
         
        dsp_slv_offset=0;
        dsp_mst_offset=0;

        buffer_size= 4*(num_word);

        lsb_first=0;

        configure_i2s_dsp_slave  (rx_addr,buffer_size , lsb_first , num_bits, USE_MST_CLK , num_word, dsp_setup_time_slv, DSP_MODE_0, dsp_slv_offset, clk_freq);
        configure_i2s_dsp_master (tx_addr,buffer_size , lsb_first , num_bits, USE_MST_CLK , num_word, dsp_setup_time_mst, DSP_MODE_0, dsp_mst_offset, clk_freq);  

        wait_cycles(25000);
        
        printf("MIC_0 should be 10: %d\n", pulp_read32(rx_addr) );
        printf("MIC_1 should be 12: %d\n",pulp_read32(rx_addr +1) );
        printf("MIC_2 should be 14: %d\n",pulp_read32(rx_addr +2) );  
        printf("MIC_3 should be 16: %d\n",pulp_read32(rx_addr +3) );    

        printf("MIC_4 should be 18: %d\n",pulp_read32(rx_addr +4) );
        printf("MIC_5 should be 20: %d\n",pulp_read32(rx_addr +5) );
        printf("MIC_6 should be 22: %d\n",pulp_read32(rx_addr +6) );  
        printf("MIC_7 should be 24: %d\n",pulp_read32(rx_addr +7) ); 

        /*printf("MIC_8 should be 26: %d\n",pulp_read32(rx_addr +8) );
        printf("MIC_9 should be 28: %d\n",pulp_read32(rx_addr +9) );
        printf("MIC_10 should be 30: %d\n",pulp_read32(rx_addr +10) );  
        printf("MIC_11 should be 32: %d\n",pulp_read32(rx_addr +11) );    

        printf("MIC_12 should be 34: %d\n",pulp_read32(rx_addr +12));
        printf("MIC_13 should be 36: %d\n",pulp_read32(rx_addr +13) );
        printf("MIC_14 should be 38: %d\n",pulp_read32(rx_addr +14) );  
        printf("MIC_15 should be 40: %d\n",pulp_read32(rx_addr +15) ); */
      }


      if (i==2){
        
        printf ("***************************** TEST %d *****************************\n",i+1);

        
        disable_i2s_dsp_slave();
        disable_i2s_dsp_master();
        disable_i2s_clk();
        reset_i2s_registers();

        val_wr=10;
        for (int j=0; j< num_word; j++) {
          pulp_write32(tx_addr+j, val_wr);
          val_wr+=2;
        }

        num_bits= 32;
        num_word= 16;

        ws_freq= 24;
        clk_freq= (ws_freq*1000)*num_word*num_bits;
         
        dsp_setup_time_mst=0;
        dsp_setup_time_slv=0;
         
        dsp_slv_offset=0;
        dsp_mst_offset=0;

        buffer_size= 4*(num_word);

        lsb_first=1;

        configure_i2s_dsp_slave  (rx_addr,buffer_size , lsb_first , num_bits, USE_MST_CLK , num_word, dsp_setup_time_slv, DSP_MODE_1, dsp_slv_offset, clk_freq);
        configure_i2s_dsp_master (tx_addr,buffer_size , lsb_first , num_bits, USE_MST_CLK , num_word, dsp_setup_time_mst, DSP_MODE_1, dsp_mst_offset, clk_freq);  

        wait_cycles(12000);
        
        printf("MIC_0 should be 10: %d\n", pulp_read32(rx_addr) );
        printf("MIC_1 should be 12: %d\n",pulp_read32(rx_addr +1) );
        printf("MIC_2 should be 14: %d\n",pulp_read32(rx_addr +2) );  
        printf("MIC_3 should be 16: %d\n",pulp_read32(rx_addr +3) );    

        printf("MIC_4 should be 18: %d\n",pulp_read32(rx_addr +4) );
        printf("MIC_5 should be 20: %d\n",pulp_read32(rx_addr +5) );
        printf("MIC_6 should be 22: %d\n",pulp_read32(rx_addr +6) );  
        printf("MIC_7 should be 24: %d\n",pulp_read32(rx_addr +7) ); 

        printf("MIC_8 should be 26: %d\n",pulp_read32(rx_addr +8) );
        printf("MIC_9 should be 28: %d\n",pulp_read32(rx_addr +9) );
        printf("MIC_10 should be 30: %d\n",pulp_read32(rx_addr +10) );  
        printf("MIC_11 should be 32: %d\n",pulp_read32(rx_addr +11) );    

        printf("MIC_12 should be 34: %d\n",pulp_read32(rx_addr +12));
        printf("MIC_13 should be 36: %d\n",pulp_read32(rx_addr +13) );
        printf("MIC_14 should be 38: %d\n",pulp_read32(rx_addr +14) );  
        printf("MIC_15 should be 40: %d\n",pulp_read32(rx_addr +15) ); 

      }

      if (i==3){
        
      }

  }

  
  
   
  
  return 0;
}

