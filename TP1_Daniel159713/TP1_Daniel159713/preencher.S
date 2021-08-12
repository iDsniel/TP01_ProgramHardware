
/*
 * Assembler1.S
 *
 * Created: 12/08/2021 20:40:10
 *  Author: danie
 */ 

  #include <avr/io.h>

 .global Muda_clock

	Muda_clock:
		LDI	r25,0x80
		STS CLKPR, R25
		STS CLKPR, R24
		RET



.global preencher

	preencher:
	st X+,r16 ;Guarda em X high o que tiver no r16 e move o X para o proximo endereço
	inc r16   ;Incrementa r16
	cpi xl,0x64 ;Compara se o valor 0x64 é igual a xl
	brne preencher
	cpi xh,0x01 ;Compara se o valor 0x01 é igual a xh
	brne preencher
	