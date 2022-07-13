typedef volatile unsigned int vuint32;

#define RCC_BASE	 0x40021000
#define GPIOA_BASE	 0x40010800
#define RCC_APB2ENR	 *((vuint32 *)(RCC_BASE   + 0x18))
#define GPIOA_CRH	 *((vuint32 *)(GPIOA_BASE + 0x04))
#define GPIOA_ODR    *((vuint32 *)(GPIOA_BASE  + 0x0c))

/*extern void Bus_Handler(void)
{
	
}
*/

unsigned char init_var[3] = {1,2,3};		/* .data	*/
unsigned char uniit_var[3];					/* .bss 	*/
unsigned char const const_var[3] = {1,2,3};	/* .rodata */

int main(void)
{
	RCC_APB2ENR |= 1<<2;
	GPIOA_CRH   &= 0xff0fffff;
	GPIOA_CRH   |= 0x00200000;

	int i;
	while(1){
		GPIOA_ODR |= 1<<13;
		for(i=0; i<5000; i++);
		GPIOA_ODR &= ~(1<<13);
		for(i=0; i<5000; i++);
	}

	return 0;
}
