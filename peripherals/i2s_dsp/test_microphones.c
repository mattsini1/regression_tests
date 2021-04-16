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


int main(){

	uint32_t rx_addr[BUFFER_SIZE];

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



	ws_freq= 8;
	clk_freq= (ws_freq*1000)*num_word*num_bits;

	dsp_setup_time_mst=0;
	dsp_setup_time_slv=0;

	dsp_slv_offset=1;
	dsp_mst_offset=10;

	buffer_size= 4*(num_word);

	lsb_first=0;

	configure_i2s_dsp_slave  ((uint32_t) rx_addr,(uint32_t) buffer_size, (uint32_t) lsb_first ,(uint32_t)  num_bits, (uint32_t) USE_SLV_CLK , (uint32_t) num_word, (uint32_t) dsp_setup_time_slv, (uint32_t)DSP_MODE_0, (uint32_t) dsp_slv_offset, (uint32_t) clk_freq);

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

