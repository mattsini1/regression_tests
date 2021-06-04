/*
 * Copyright (C) 2021 ETH Zurich and University of Bologna
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
 * Authors: Luca Bertaccini <lbertaccini@iis.ee.ethz.ch>
 */

#include <stdint.h>
#include <stdio.h>
#include "archi_hwpe.h"
#include "hal_hwpe.h"
#include "pulp.h"

#include "inc/stimuli_rand_n512_8b.h"
#include "inc/golden_results_n512_8b.h"

// DATA_SIZE = n_data*size/4*2
#define DATA_SIZE    (2048)

int main() {


  uint8_t volatile *a = 0x1c010000;

  volatile int errors = 0;
  int gold_sum = 0, check_sum = 0;
  int n_data = 512;
  int size   = 0;
  int reorder_enable = 1;

  int offload_id_tmp, offload_id;
  int event;

  int tmp_8  = 0;
  int tmp_16 = 0;
  int tmp_32 = 0;

  int i;
  // copy input stimuli to a location accessible by the HWPE
  if (size == 1) {
    for(uint32_t addr= ((int) a); addr < ((int) a + DATA_SIZE/2); addr += 2) {
       i = addr - ((int) a);
      *(uint32_t *)(addr) = stim_a[i/2];
    }
  } else if (size == 2) {
    for(uint32_t addr= ((int) a); addr < ((int) a + DATA_SIZE/2); addr += 4) {
       i = addr - ((int) a);
      *(uint32_t *)(addr) = stim_a[i/4];
    }
  } else if (size == 0) {
    for(uint32_t addr= ((int) a); addr < ((int) a + DATA_SIZE/2); addr += 1) {
       i = addr - ((int) a);
      *(uint32_t *)(addr) = stim_a[i];
    }
  }

  plp_hwpe_enable();

  while((offload_id_tmp = hwpe_acquire_job()) < 0);

  // job-dependent registers
  hwpe_base_addr_set((unsigned int) a);
  hwpe_n_data_set(n_data-1);
  hwpe_data_size_set(size);
  hwpe_reorder_enable_set(reorder_enable);

  // start hwpe operation
  hwpe_trigger_job();

  // enable interrupts
  //read mstatus
  int mstat;
  asm volatile ("csrr %0, 0x300" : "=r" (mstat));
  // turn bit 3 (MIE) to 1 
  mstat= (1<<3) | mstat;
  asm volatile ("csrw 0x300, %0" : : "r"(1<<CSR_PCER_LD_STALL));

  //set MIE(26) to 1
  asm volatile ("csrw 0x304, %0" : : "r"(1<<26));

    
  //set MIP(26) to 1
  asm volatile ("csrw 0x344, %0" : : "r"(1<<26));
  
  // wait for end of compuation
  soc_eu_fcEventMask_setEvent(ARCHI_SOC_EVENT_FCHWPE0);
  hal_itc_wait_for_event(1 << 26);
  soc_eu_fcEventMask_clearEvent(ARCHI_SOC_EVENT_FCHWPE0);

  // disable hwpe
  plp_hwpe_disable();

  if (!reorder_enable) {
    // no reorder
    if (size == 1) {
      for (int i = 0; i < 2*n_data; ++i){
        // check real/imaginary part (8-bit)
        tmp_16 = ((int16_t *) a)[i] - ((int16_t *) stim_d)[i];
        if ((tmp_16 > 7) || (tmp_16 < -7)) errors++;
      }
    } else if (size == 0) {
      for (int i = 0; i < 2*n_data; ++i){
        // check real/imaginary part (8-bit)
        tmp_8 = ((int8_t *) a)[i] - ((int8_t *) stim_d)[i];
        if ((tmp_8 > 9) || (tmp_8 < -9)) errors++;
      }
    } else if (size == 2) {
      for (int i = 0; i < 2*n_data; ++i){
        // check real or imaginary part (32-bit)
        tmp_32 = ((int32_t *) a)[i] - ((int32_t *) stim_d)[i];
        if ((tmp_32 > 5) || (tmp_32 < -5)) errors++;
      }
    }
  } else {

    // reorder
    if (size == 1) {
      for (int i = 2*n_data; i < 4*n_data; ++i){
        // check real/imaginary part (8-bit)
        tmp_16 = ((int16_t *) a)[i] - ((int16_t *) stim_d)[i - 2*n_data];
        if ((tmp_16 > 7) || (tmp_16 < -7)) errors++;
      }
    } else if (size == 0) {
      for (int i = 2*n_data; i < 4*n_data; ++i){
        // check real/imaginary part (8-bit)
        tmp_8 = ((int8_t *) a)[i] - ((int8_t *) stim_d)[i - 2*n_data];
        if ((tmp_8 > 9) || (tmp_8 < -9)) errors++;
      }
    } else if (size == 2) {
      for (int i = 2*n_data; i < 4*n_data; ++i){
        // check real or imaginary part (32-bit)
        tmp_32 = ((int32_t *) a)[i] - ((int32_t *) stim_d)[i - 2*n_data];
        if ((tmp_32 > 5) || (tmp_32 < -5)) errors++;
      }
    }
  }

  *(int *) 0x80000000 = errors;
  return errors;
}
