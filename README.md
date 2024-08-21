# Baremetal_VS_FreeRTOS_Bench

Benchmarking of Baremetal Versus FreeRTOS using coremark as workload

About 4 years ago, I was curious to see the overhead % when using FreeRTOS compared to bare-metal on an ARM Cortex M4F microcontroller.

# System Requirements
Embedded Studio for ARM (legacy) version <= 5.70a
Tested on AMD64 Linux PC with a Segger J-Link debugger with RTT.

# HW Target Requirements
Any board with ATSAME5x or even ATSAMD5x is compatible.
Tested on SAME54 Xplained Pro but the embedded debugger (EDBG) reflashed to become a J-link OB. See here:
https://www.segger.com/products/debug-probes/j-link/models/other-j-links/j-link-edbg/

# User Guide
1. Start Segger embedded studio.
2. Click to "Open solution" from File menu.
3. Locate the "AtmelStart.hzp" solution file inside the root folder of xxxBENCH project folders.
4. Build, Flash, Run or Debug!
5. See the "printf" like messages from the ARM board through RTT protocol inside Segger embedded studio.

# Project Settings
* The FreeRTOS bench project has the configTICK_RATE_HZ at FreeRTOSConfig.h and configUSE_TIME_SLICING at FreeRTOS.h header files. All other options are default.

# Info
FreeRTOS Kernel V10.3.1 have been used.
