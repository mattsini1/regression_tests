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

#define num_test  3


int main(){
  
  uint32_t rx_addr[BUFFER_SIZE];
  uint32_t tx_addr[BUFFER_SIZE];
  int test[num_test];
  uint32_t buffer_size, num, result;
  int u=0;
  
  uint32_t num_bits,num_word, two_ch, lsb_first, dsp_slv_offset, dsp_mst_offset;
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
  ** NUM_BITS  : (8 - 16 - 24 - 32)                                                                                   **
  ** DSP_OFFSET: (0 - 32 - 64 - 96 - 128 - 160 - 192 - 224 - 256 - 288 - 320 - 352 - 380 - 416 - 448 - 480 - 512)     **
  **********************************************************************************************************************                                                                                                               **
    
   WS_FREQ : 48KHz - 24KHz - 16KHz - 8KHz

  *********************************************
  ** NUM_WORDS **         CLK_FREQ           **                                                                                                      
  **    1-2    **  2  x NUM_BITS x WS_FREQ   **
  **    3-4    **  4  x NUM_BITS x WS_FREQ   **                                                                                           
  **    5-8    **  8  x NUM_BITS x WS_FREQ   **                                                                                             
  **    9-16   **  16 x NUM_BITS x WS_FREQ   **
  ********************************************/
   
  num_bits= 32;
  num_word= 16;

  result=0;

  // set result test
  for (int i=0; i< num_test; i++){
     test[i]=1;
  }
 
  /*****************************************************************************************************************************
  **                                                          IMPORTANT                                                       **                                                             
  **  If you want to syncronize both channel with the same sck and ws you must use MST_CLK for master and slave               **
  **  The master must use always MST_CLK because of syncronization with the memory                                            **                                                                                             
  **  If also you want to stop the transaction or change the clk freq you must disable the clock after slave and master regs  **
  **  The configuration must be executed with the clock disabled and it must be anabled at the end                            **                                                                                         **
  ******************************************************************************************************************************/  
  
  

  for (int i=0; i< num_test; i++) {

      if (i==0){
        printf ("***************************** TEST %d *****************************\n",i+1);

        num_bits= 32;
        num_word= 16;

        //set tx buffer
        val_wr=8;
        for (int j=0; j< num_word; j++) {
          pulp_write32(tx_addr+j, val_wr);
          val_wr+=2;
        }

        ws_freq= 8;
        clk_freq= (ws_freq*1000)*num_word*num_bits;
         
        dsp_setup_time_mst=0;
        dsp_setup_time_slv=0;
        
        dsp_slv_offset=32;
        dsp_mst_offset=32;

        buffer_size= 4*(num_word);

        lsb_first=0;

        printf ("SLAVE CONIFG\n");
        printf("Freqency: %d KHz\n",ws_freq);
        printf("Num bits: %d\n",num_bits);
        printf("Num words: %d\n",num_word);
        printf("LSB first (0: no , 1: yes): %d\n",lsb_first);
        printf("Setup time: %d\n",dsp_setup_time_slv);
        printf("Offset: %d\n",dsp_slv_offset);
        printf("TDM mode: %d\n",DSP_MODE_1);
        printf("Clock (0: master , 1: slave): %d\n\n",USE_MST_CLK);
        
        printf ("MASTER CONIFG \n");
        printf("Freqency: %d KHz\n",ws_freq);
        printf("Num bits: %d\n",num_bits);
        printf("Num words: %d\n",num_word);
        printf("LSB first (0: no , 1: yes): %d\n",lsb_first);
        printf("Setup time: %d\n",dsp_setup_time_mst);
        printf("Offset: %d\n",dsp_mst_offset);
        printf("TDM mode: %d\n",DSP_MODE_1);
        printf("Clock (0: master , 1: slave): %d\n",USE_MST_CLK);

        configure_i2s_dsp_slave  ((uint32_t) rx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_MST_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_slv, (uint32_t)DSP_MODE_1, (uint32_t) dsp_slv_offset, (uint32_t) clk_freq);
        configure_i2s_dsp_master ((uint32_t) tx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_MST_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_mst, (uint32_t)DSP_MODE_1, (uint32_t) dsp_mst_offset, (uint32_t) clk_freq);  

        wait_cycles(50500);

        val_wr=8;
        for (int j=0; j< num_word; j++) {
          printf("MIC_%d should be %d: %d\n",j,val_wr, pulp_read32(rx_addr+j) );
          if (pulp_read32(rx_addr+j)!=val_wr)
            test[i]=0;
          val_wr+=2;
        }
        
      }


      if (i==1){
        

        printf ("***************************** TEST %d *****************************\n",i+1);

        disable_i2s_dsp_master();
        disable_i2s_dsp_slave();
        disable_i2s_master_clk();
        disable_i2s_slave_clk();
        reset_i2s_registers();

        num_bits= 32;
        num_word= 8;

        val_wr=10;
        for (int j=0; j< num_word; j++) {
          pulp_write32(tx_addr+j, val_wr);
          val_wr+=2;
        }

        ws_freq= 48;
        clk_freq= (ws_freq*1000)*num_word*num_bits;
         
        dsp_setup_time_mst=0;
        dsp_setup_time_slv=0;
         
        dsp_slv_offset=64;
        dsp_mst_offset=64;

        buffer_size= 4*(num_word);

        lsb_first=0;

        printf ("SLAVE CONIFG \n");
        printf("Freqency: %d KHz\n",ws_freq);
        printf("Num bits: %d\n",num_bits);
        printf("Num words: %d\n",num_word);
        printf("LSB first (0: no , 1: yes): %d\n",lsb_first);
        printf("Setup time: %d\n",dsp_setup_time_slv);
        printf("Offset: %d\n",dsp_slv_offset);
        printf("TDM mode: %d\n",DSP_MODE_0);
        printf("Clock (0: master , 1: slave): %d\n\n",USE_MST_CLK);
        
        printf ("MASTER CONIFG \n");
        printf("Freqency: %d KHz\n",ws_freq);
        printf("Num bits: %d\n",num_bits);
        printf("Num words: %d\n",num_word);
        printf("LSB first (0: no , 1: yes): %d\n",lsb_first);
        printf("Setup time: %d\n",dsp_setup_time_mst);
        printf("Offset: %d\n",dsp_mst_offset);
        printf("TDM mode: %d\n",DSP_MODE_0);
        printf("Clock (0: master , 1: slave): %d\n",USE_MST_CLK);

        configure_i2s_dsp_slave  ((uint32_t) rx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_MST_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_slv, (uint32_t)DSP_MODE_0, (uint32_t) dsp_slv_offset, (uint32_t) clk_freq);
        configure_i2s_dsp_master ((uint32_t) tx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_MST_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_mst, (uint32_t)DSP_MODE_0, (uint32_t) dsp_mst_offset, (uint32_t) clk_freq);

        wait_cycles(99500);

        val_wr=10;
        for (int j=0; j< num_word; j++) {
          printf("MIC_%d should be %d: %d\n",j,val_wr, pulp_read32(rx_addr+j) );
          if (pulp_read32(rx_addr+j)!=val_wr)
            test[i]=0;
          val_wr+=2;
        }
      }


      if (i==2){
        
        printf ("***************************** TEST %d *****************************\n",i+1);

        disable_i2s_dsp_master();
        disable_i2s_dsp_slave();
        
        disable_i2s_slave_clk();
        disable_i2s_master_clk();
        reset_i2s_registers();

        num_bits= 8;
        num_word= 16;

        val_wr=10;
        for (int j=0; j< num_word; j++) {
          pulp_write32(tx_addr+j, val_wr);
          val_wr+=2;
        }

        ws_freq= 24;
        clk_freq= (ws_freq*1000)*num_word*num_bits;
         
        dsp_setup_time_mst=1000000;
        dsp_setup_time_slv=0;
         
        dsp_slv_offset=0;
        dsp_mst_offset=0;

        buffer_size= 4*(num_word);

        lsb_first=1;


        printf ("SLAVE CONIFG \n");
        printf("Freqency: %d KHz\n",ws_freq);
        printf("Num bits: %d\n",num_bits);
        printf("Num words: %d\n",num_word);
        printf("LSB first (0: no , 1: yes): %d\n",lsb_first);
        printf("Setup time: %d\n",dsp_setup_time_slv);
        printf("Offset: %d\n",dsp_slv_offset);
        printf("TDM mode: %d\n",DSP_MODE_0);
        printf("Clock (0: master , 1: slave): %d\n\n",USE_MST_CLK);
        
        printf ("MASTER CONIFG \n");
        printf("Freqency: %d KHz\n",ws_freq);
        printf("Num bits: %d\n",num_bits);
        printf("Num words: %d\n",num_word);
        printf("LSB first (0: no , 1: yes): %d\n",lsb_first);
        printf("Setup time: %d\n",dsp_setup_time_mst);
        printf("Offset: %d\n",dsp_mst_offset);
        printf("TDM mode: %d\n",DSP_MODE_0);
        printf("Clock (0: master , 1: slave): %d\n\n",USE_MST_CLK);

        configure_i2s_dsp_slave  ((uint32_t) rx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_MST_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_slv, (uint32_t)DSP_MODE_0, (uint32_t) dsp_slv_offset, (uint32_t) clk_freq);
        configure_i2s_dsp_master ((uint32_t) tx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_MST_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_mst, (uint32_t)DSP_MODE_0, (uint32_t) dsp_mst_offset, (uint32_t) clk_freq);

        wait_cycles(100000);

        val_wr=10;
        for (int j=0; j< num_word; j++) {
          printf("MIC_%d should be %d: %d\n",j,val_wr, pulp_read32(rx_addr+j) );
          if (pulp_read32(rx_addr+j)!=val_wr)
            test[i]=0;
          val_wr+=2;
        }
      }

  }

  for (int j=0; j< num_test; j++) {
    if (test[j]==0){
      printf ("Test %d failed\n",j+1);
      result=1;
    }
    else
      printf ("Test %d passed\n",j+1);
  }

  return result;
}

