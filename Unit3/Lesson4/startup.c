typedef unsigned int uint32;

extern int main(void);
extern unsigned int _E_text;
extern unsigned int _S_data;
extern unsigned int _E_data;
extern unsigned int _S_bss;
extern unsigned int _E_bss;
void Reset_Handler(void)
{
	//copy .data from ROM to RAM
	unsigned int DATA_size = (unsigned char*)&_E_data -  (unsigned char*)&_S_data;
	unsigned char* P_src = (unsigned char*)&_E_text;
	unsigned char* P_dst = (unsigned char*)&_S_data;
	int i;
	for(i=0; i<DATA_size; i++)
		*((unsigned char*)P_dst++) = *((unsigned char*)P_src++);
	
	//init .bss with zero
	unsigned int bss_size = (unsigned char*)&_E_bss -  (unsigned char*)&_S_bss;
	P_dst = (unsigned char*)&_S_bss;
	for(i=0; i<bss_size; i++)
		*((unsigned char*)P_dst++) = (unsigned char)0;
	
	main();
}

void Default_Handler(void)
{
	Reset_Handler();
}

void NMI_Handler(void) __attribute__((weak, alias("Default_Handler")));
void H_fault_Handler(void) __attribute__((weak, alias("Default_Handler")));
void MM_Fault_Handler(void) __attribute__((weak, alias("Default_Handler")));
void Bus_Handler(void) __attribute__((weak, alias("Default_Handler")));
void Usage_Fault_Handler(void) __attribute__((weak, alias("Default_Handler")));

//stack in .bss section
static unsigned long Stack_top[256]; //1k byte

//vector array is array of const pointers to function takes () and return void.
 void (* const vectors[])() __attribute__((section(".vectors"))) =
{
	(void (*)()) ((unsigned long)Stack_top + sizeof(Stack_top)),
	&Reset_Handler,
	&NMI_Handler,
	&H_fault_Handler,
	&MM_Fault_Handler,
	&Bus_Handler,
	&Usage_Fault_Handler
};