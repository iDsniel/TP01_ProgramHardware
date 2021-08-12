/*
 * TP1_Daniel159713.c
 *
 * Created: 12/08/2021 20:39:02
 * Author : daniel
 */ 

#include <avr/io.h>

enum freq{Mhz_8, Mhz_4, Mhz_2, Mhz_1, khz_500, khz_250, khz_125, khz_64, khz_32};


extern void Muda_clock(char);
extern char preencher(char);



main(){
	
	Muda_clock(Mhz_8);
	volatile unsigned char val2;

	while (1)

	{
		val2= 0;
		preencher(val2);
	}
	
	
	
	
	
};
