/*
* Copyright (C) 2018 ETH Zurich and University of Bologna
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

/*
* Mantainer: Luca Valente (luca.valente2@unibo.it)
*/

#include <stdio.h>
#include "pulp.h"


//ARCHI_APB_SOC_CTRL_ADDR (pad mux regs are in the soc control)
//ARCHI_GPIO_ADDR (base address of the GPIO IP)
//--- this application writes and read back all the pad mux regs

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

#define OUT 1
#define IN  0

#define TEST 1

#define GPIO_ON_CHIP 25

int pad_fun_offset[4] = {REG_PADFUN0_OFFSET,REG_PADFUN1_OFFSET,REG_PADFUN2_OFFSET,REG_PADFUN3_OFFSET};
int pad_cfg_offset[7] = {REG_PADCFG0_OFFSET,REG_PADCFG1_OFFSET,REG_PADCFG2_OFFSET,REG_PADCFG3_OFFSET,REG_PADCFG4_OFFSET,REG_PADCFG5_OFFSET,REG_PADCFG6_OFFSET};

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



uint32_t configure_gpio(uint32_t number, uint32_t direction, uint32_t alternate){
  uint32_t which_reg_fun = number / 16; //select the correct register
  uint32_t address = ARCHI_APB_SOC_CTRL_ADDR + pad_fun_offset[which_reg_fun];

  //--- set alternate 1/2/3 on GPIO
  uint32_t value_wr = pulp_read32(address);
  value_wr |= ((alternate & 0x00000003) << ((number - which_reg_fun*16)*2));
  pulp_write32(address, value_wr);

  //--- set GPIO
  if(number < 32)
  {
    if (direction == IN) 
    {
      //--- enable GPIO
      address = ARCHI_GPIO_ADDR + GPIO_GPIOEN_OFFSET;
      value_wr = pulp_read32(address);
      value_wr &= ~(1 << number);
      pulp_write32(address, value_wr);
      //--- set direction
      address = ARCHI_GPIO_ADDR + GPIO_PADDIR_OFFSET;
      pulp_write32(address, value_wr);
    }else if (direction == OUT){ 
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
    if (direction == IN)
    {
      //--- enable GPIO
      address = ARCHI_GPIO_ADDR + GPIO_GPIOEN_32_63_OFFSET;
      value_wr = pulp_read32(address);
      value_wr &= ~(1 << (number-32));
      pulp_write32(address, value_wr);
      //--- set direction
      address = ARCHI_GPIO_ADDR + GPIO_PADDIR_32_63_OFFSET;
      pulp_write32(address, value_wr);
    }else if (direction == OUT){
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

void set_gpio(uint32_t number, uint32_t value){
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
  //printf("value reg: %d \n",value_rd);
  return (value_rd & (1 << (number % 32)))>>number;
}


void output_test_gpio (){
  int i=0;

  /*
   This test drives the output of all the gpios.
   Simply use questasim to check if they change
  */
  
  printf ("Start output test GPIO\n\n");

  for (int j=0; j< GPIO_ON_CHIP; j++){
    configure_gpio( j , OUT , 1);
    printf ("Config GPIO%d as OUT\n",j);
  }

  while (1){
    printf ("value i: %d\n",i);
    if (i==0){
      i=1;

      for (uint32_t j=0; j< GPIO_ON_CHIP; j++){
        printf ("Set %d to 0\n",j);
        set_gpio(j,0);
      }

    }else {
      i=0;
      printf ("Set all 1\n");

      for (uint32_t j=0; j< GPIO_ON_CHIP; j++){
         printf ("Set %d to 1\n",j);
        set_gpio(j,1);
      }

    }

  }

}

uint32_t cross_same_pad(){
  uint32_t err=0, mod=0, k=0;
  uint32_t val[(GPIO_ON_CHIP-1)/2];

  for (int i=0;i<GPIO_ON_CHIP-1; i+=2){
      configure_gpio( i , IN, 1);
      configure_gpio( i+1 , OUT, 1);
    }

      for (int i=1; i<11; i++){
      
      mod= i%2;
      k=0;
     
      printf ("\nSet GPIOX to %d \n",mod);
      
      for (int j=1;j<GPIO_ON_CHIP-1; j+=2){
        printf(".");
        set_gpio(j,mod);
      }
      
      for (int j=0;j<GPIO_ON_CHIP-2;j+=2){
        printf(".");
        val[k]=get_gpio(j);
        k++;
      }
      
      for (int j=0; j<(GPIO_ON_CHIP-1)/2; j++) {
        printf ("\nRead GPIO_X: %d (should be %d)", val[j], mod);

        if(val[j]!=mod )
          err++;
      }
    }
    return err;
}



uint32_t cross_adjacent_pad(){
  uint32_t err=0, mod=0, k=0;
  uint32_t val[(GPIO_ON_CHIP-1)/2];

  for (int i=0;i<GPIO_ON_CHIP-1; i+=8){
      configure_gpio( i , IN, 1);
      configure_gpio( i+1 , IN, 1);
      configure_gpio( i+2 , IN, 1);
      configure_gpio( i+3 , IN, 1);

      configure_gpio( i+4 , OUT, 1);
      configure_gpio( i+5 , OUT, 1);
      configure_gpio( i+6 , OUT, 1);
      configure_gpio( i+7 , OUT, 1);
    }

    for (int i=1; i<11; i++){
      
      mod= i%2;
      k=0;
     
      printf ("\nSet GPIOX to %d \n",mod);

      wait_cycles(500);
      
      for (int j=4;j<GPIO_ON_CHIP-1; j+=8){
        printf(".");
        set_gpio(j,mod);
        set_gpio(j+1,mod);
        set_gpio(j+2,mod);
        set_gpio(j+3,mod);
      }

      wait_cycles(500);
      
      for (int j=0;j<GPIO_ON_CHIP-2;j+=8){
        printf(".");
        val[k]=get_gpio(j);
        val[k+1]=get_gpio(j+1);
        val[k+2]=get_gpio(j+2);
        val[k+3]=get_gpio(j+3);
        k+=4;
      }
      
      for (int j=0; j<(GPIO_ON_CHIP-1)/2; j++) {
        printf ("\nRead GPIO_X: %d (should be %d)", val[j], mod);

        if(val[j]!=mod )
          err++;
      }
    }

    return err;
}

//it cross the gpio on the odd pad and even pad
uint32_t cross_even_odd_pad(){
  uint32_t err=0, mod=0, k=0;
  uint32_t val[(GPIO_ON_CHIP-1)/2];

  for (int i=0;i<8; i+=4){
      configure_gpio( i , IN, 1);
      configure_gpio( i+1 , IN, 1);
      configure_gpio( i+2 , IN, 1);
      configure_gpio( i+3 , IN, 1);

      configure_gpio( i+8 , OUT, 1);
      configure_gpio( i+9 , OUT, 1);
      configure_gpio( i+10 , OUT, 1);
      configure_gpio( i+11 , OUT, 1);
    }

    for (int i=1; i<11; i++){
      
      mod= i%2;
      k=0;
     
      printf ("\nSet GPIOX to %d \n",mod);
      
      for (int j=8;j<15; j+=4){
        printf(".");
        set_gpio(j,mod);
        set_gpio(j+1,mod);
        set_gpio(j+2,mod);
        set_gpio(j+3,mod);
      }

      wait_cycles(100);
      
      for (int j=0;j<8;j+=4){
        printf(".");
        val[k]=get_gpio(j);
        val[k+1]=get_gpio(j+1);
        val[k+2]=get_gpio(j+2);
        val[k+3]=get_gpio(j+3);
        k+=4;
      }
      
      for (int j=0; j<(GPIO_ON_CHIP-1)/2; j++) {
        printf ("\nRead GPIO_X: %d (should be %d)", val[j], mod);

        if(val[j]!=mod )
          err++;
      }
    }

    return err;
}

uint32_t cross_uart(){
  uint32_t val,mod=0, err=0;

  //GPIO6 = uart_rx 
  //GPIO7 = uart_tx
  configure_gpio( 6 , IN, 1);
  configure_gpio( 7 , OUT, 1);

  for (int i=1; i<11; i++){
      
      mod= i%2;
     
      printf ("Set GPIO7 to %d \n",mod);     
      set_gpio(7,mod);
      
      val=get_gpio(6);    
    
      printf ("Read GPIO_6: %d (should be %d)\n", val, mod);

      if(val!=mod)
          err++;
      }
    return err;
  }


int main(){
  uint32_t mod=0, err=0, k=0;
  uint32_t val[12];

  int crossed=4;

  if (TEST==0){
    //test for testbench
    output_test_gpio ();
  }else{

    err=cross_uart();
   
  }
  return err;
}
