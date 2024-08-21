# Baremetal_VS_FreeRTOS_Bench

Benchmarking of Baremetal Versus FreeRTOS using coremark as workload

About 4 years ago, I was curious to see the overhead % when using FreeRTOS compared to bare-metal on an ARM Cortex M4F microcontroller.

# System Requirements
Embedded Studio for ARM (legacy) version <= 5.70a
Testing on AMD64 Linux PC
Segger J-Link debugger with RTT.

# HW Target Requirements
Any board with ATSAME5x or even ATSAMD5x that are without canbus.
Tested on SAME54 Xplained Pro but the embedded debugger (EDBG) reflashed to become a J-link OB. See here:
https://www.segger.com/products/debug-probes/j-link/models/other-j-links/j-link-edbg/

# User Guide
1. Start Segger embedded studio.
2. Click to Open solution from File menu.
3. Locate the AtmelStart.hzp solution file of the root BENCH folders.
4. Build, Flash, Run or Debug!
5. See the "printf" like messages inside Segger embedded studio.

# Project Settings
* The bare metal bench doesn't have any.
* The FreeRTOS bench have the configTICK_RATE_HZ at FreeRTOSConfig.h and configUSE_TIME_SLICING at FreeRTOS.h header files.

# Info
FreeRTOS Kernel V10.3.1 have been used.