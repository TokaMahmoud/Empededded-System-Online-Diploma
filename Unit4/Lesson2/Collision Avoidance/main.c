/*
 * main.c
 *
 *  Created on: Jul 20, 2022
 *      Author: tokam
 */

#include <stdio.h>
#include "CA.h"
#include "US.h"
#include "DC.h"

void setup() {
	US_init();
	DC_init();

	pfstate = state(waiting);
	pfUS_state = state(US_busy);
	pfDC_state = state(DC_idle);
}

int main() {
	volatile int i;

	setup();

	while (1) {
		pfUS_state();
		pfstate();
		pfDC_state();

		for (i = 0; i <= 1000; i++);
	}
}
