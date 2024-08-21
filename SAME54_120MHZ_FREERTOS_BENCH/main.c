#include "typedefs.h"
#include "driver_init.h"
#include <stdio.h>
#include <string.h>
#include <hal_delay.h>
#include "coremark.h"
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"

//softtimer settings
#define ST_PERIOD_TICKS     configTICK_RATE_HZ/10
#define AUTO_RELOAD         true
#define BENCH_PRI           1      //SoftTimer Priority is default 2

xTimerHandle SoftTimer_handle_id;
TaskHandle_t xBench1, xBench2, xBench3, xBench4;

static void xplained_led0_config( void )
{
    PORTC.DIRSET.reg = 1 << 18;    //PC18 led0
    PORTC.OUTSET.reg = 1 << 18;    //led0 OFF
}

float total_result_from_all_threads = 0;

void benchmark_thread_1( void *pvParameters )
{     
      (void) pvParameters;
      printf("Running Benchmark Thread No 1\r\n");
      total_result_from_all_threads += coremain();
      vTaskDelay( configTICK_RATE_HZ/10 );
      printf("Thread 1 Finished!\r\n");

      if(xBench2 == NULL)
        printf("TOTAL all threads score is %f", total_result_from_all_threads); 

      while(true)
      {
        vTaskDelay( 1000 );
      }
    
}

void benchmark_thread_2( void *pvParameters )
{   
      (void) pvParameters;
      printf("Running Benchmark Thread No 2\r\n");
      total_result_from_all_threads += coremain();
      vTaskDelay( configTICK_RATE_HZ/10 * 2 );
      printf("Thread 2 Finished!\r\n");

      if(xBench3 == NULL)
        printf("TOTAL all threads score is %f", total_result_from_all_threads); 
           
      while(true)
      {
        vTaskDelay( 1000 );
      }
}

void benchmark_thread_3( void *pvParameters )
{     
      (void) pvParameters;
      printf("Running Benchmark Thread No 3\r\n");
      total_result_from_all_threads += coremain();
       vTaskDelay( configTICK_RATE_HZ/10 * 3 );
      printf("Thread 3 Finished!\r\n");
      
      if(xBench4 == NULL)
        printf("TOTAL all threads score is %f", total_result_from_all_threads); 
           
      while(true)
      {
        vTaskDelay( 1000 );
      }
}

void benchmark_thread_4( void *pvParameters )
{     
      (void) pvParameters;
      printf("Running Benchmark Thread No 4\r\n");
      total_result_from_all_threads += coremain();
      vTaskDelay( configTICK_RATE_HZ/10 * 4 );
      printf("Thread 4 Finished!\r\n");

      printf("TOTAL all threads score is %f", total_result_from_all_threads); 
           
      while(true)
      {
        vTaskDelay( 1000 );
      }
}

U32 soft_timer_ticks_counter = 0;

void SoftTimer_CALLBACK( xTimerHandle pxtimer )
{
  (void) pxtimer;
  soft_timer_ticks_counter++;
  PORTC.OUTTGL.reg = 1 << 18; //PC18 led0

}


void vApplicationStackOverflowHook( TaskHandle_t xTask, char *pcTaskName )
{
  
  static TaskHandle_t xTask_temp;

  xTask_temp = xTask;

  int len = strlen(pcTaskName);
  char temp_tbl[len];

  memcpy(temp_tbl, pcTaskName, len);

}

int main(void)
{

printf("Init Start!\r\n");


#ifndef SIMULATOR
        system_init();
        xplained_led0_config();
#else
#include <__debug_stdio.h>
#include <stdlib.h>
#endif

      printf("Main Program Start! \r\n");
        
 //   tasks init here
      xTaskCreate( benchmark_thread_1, "BENCH1", 2048, NULL, BENCH_PRI, &xBench1 );
      xTaskCreate( benchmark_thread_2, "BENCH2", 2048, NULL, BENCH_PRI, &xBench2 );
      //xTaskCreate( benchmark_thread_3, "BENCH3", 2048, NULL, BENCH_PRI, &xBench3 );
      //xTaskCreate( benchmark_thread_4, "BENCH4", 2048, NULL, BENCH_PRI, &xBench4 );

      SoftTimer_handle_id = xTimerCreate( "SOFT_TIMER", ST_PERIOD_TICKS, AUTO_RELOAD, NULL, SoftTimer_CALLBACK );
      xTimerStart( SoftTimer_handle_id, 0 );

      vTaskStartScheduler();

      while(true)
      {
        __asm("nop");
      }

      return 0;
}
