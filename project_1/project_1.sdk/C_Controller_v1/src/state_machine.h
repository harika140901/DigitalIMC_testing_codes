#ifndef SRC_STATE_MACHINE_H_
#define SRC_STATE_MACHINE_H_

// custom header files
#include "utils.h"
#include "echo.h"
 
#include "xgpio.h"
#include "xaxidma.h"
#include "xparameters.h"


/********** Signal Index for Dig AXI IN Bus 0 **********/
#define capturestart0  	0
#define capturestart1  	1
#define capturestart2  	2
#define capturestart3  	3
#define div_ratio0		4
#define div_ratio1		5
#define div_ratio2		6
#define div_ratio03		7
#define sample_edge0	8
#define sample_edge1    9
#define sample_edge2    10
#define sample_edge3    11
#define SCN_SEL_0	    12
#define SCN_SEL_1    	13
#define SCN_SEL_2	    14
#define CS_B0           15
#define CS_B1	        16
#define CLK_A        	17
#define CLK_B    		18
#define IN_EN    		19
#define SCN_IN      	20
#define COMPUTE_EN		21
#define DFF_RST 		22
#define MUX_OUT_PAD		23
#define CONTROL_EN      24
#define CLK_OUT_PAD		25
#define CLK_SA   		26
#define WEN     		27
#define READ_EN		    28
#define SA_EN		    29
#define BL_PCHG  		30
#define osc_EN   		31
/********** Signal Index for Dig AXI IN Bus 1 **********/
#define WL_EN   	32

/********** Signal Index for Output AXI Bus **********/
#define debugsc1 0
#define debugsc0 1
#define scanout  2

//Define Scan Chains
#define INPUT_SC_1       1
#define INPUT_SC_2       2
#define OUTPUT_SC        3
#define WL_SC            4
#define SA_OUT_SC          5
#define WRITE_DATA_SC         6

#define MAX_SCAN_LEN 1536
#define NUM_WL 1536

//Define signal index for MODE_SETIING_AXI
#define VERILOG_C_SCAN 	0
#define SCAN_SEL_0_V 	1
#define SCAN_SEL_1_V 	2
#define SCAN_SEL_2_V 	3
#define SCAN_IN_RECV_V 	4
#define SCAN_IN_SEND_V 	5
#define SCAN_IN_EN_V 	6
#define SCAN_OUT_EN_V 	7
#define Test_DMA_V 		8
#define TOPS_EN_V 		9
#define TOPS_STOP_V 	10
#define WRITE_SRAM_EN_V 11
#define FAST_IMC_EN_V 	12
#define SEND_IMC_DATA_V 13
#define IMC_Mode 		14
#define Ext_IMC_EN		15

//Create a structure to store the state machine data.
struct SM_DATA{
	u8 signal_values[DIG_IN_SIG_LEN]; //Signal values to be set for DIG_AXI
	u8 default_signal_values[DIG_IN_SIG_LEN]; //Default signal values for startup DIG_AXI

	u8 mode_signal_values[16]; //Signal Values to be set for MODE_AXI
	u8 mode_default_signal_values[16]; //Default signal values for startup MODE_AXI

	// to guarantee 32-byte cache-line alignment
	u8 dma_scanout_buffer[148] __attribute__((aligned(32))); // floor((MAX_SCAN_LEN+31)/32)*4 Data is saved into bits
	u8 dma_scan_in_buffer[148] __attribute__((aligned(32)));
	// 360 signed 10-bit IMC outputs = 3600 bits = 450 bytes.
	// Padded to 3616 bits (452 bytes) for 32-bit DMA transfers.
	u8 dma_imcout_buffer[452]  __attribute__((aligned(32)));
	int imc_out_mac[360];
	u8 sram_read_buffer [36*1164]; //Max scanned out data will be 36 bytes * Num_WL
	u8 sram_write_buffer[36*1152]; //Max write data for IMC will be 36 bytes * Num_WL (excluding CALIB-WL)
	u16 calib_wl[12]; // 3WLs dedicated per Bank for VTC & OSC Calibration
	u16 scan_len[10];

	XGpio AXI_INPUT_BUS_0;
	XGpio AXI_INPUT_BUS_1;
	XGpio AXI_OUTPUT_BUS;
	XGpio AXI_DEBUG_OUTPUT_BUS_0;
	XGpio AXI_DEBUG_OUTPUT_BUS_1;
	XGpio AXI_SCAN_MODE_SETTINGS_BUS;
	XAxiDma AxiDma; //DMA for verilog_scan_in

	//Static array for correction slope and bias per (CiM Bank)->(Compute-Line)
	float Correction_Data[2][4][90];
};

extern struct SM_DATA GLOBAL_SM_DATA;

err_t process_fn();
#endif /* SRC_STATE_MACHINE_H_ */
