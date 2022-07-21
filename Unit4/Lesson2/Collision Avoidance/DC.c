/*
 * DC.c
 *
 *  Created on: Jul 21, 2022
 *      Author: tokam
 */


#include "DC.h"

 //variables
int DC_speed = 0;
void (*pfDC_state)();
enum DC_stateId   state_id;

void DC_init() {

	printf("DC_init\n");
}

void DC_set_speed(int s)
{
	DC_speed = s;

	printf("CA -----------------> DC speed = %d \n", DC_speed);

	pfDC_state = state(DC_busy);
}

state_define(DC_idle) {
	//state name
	state_id = DC_idle;

	printf("DC_idle state : speed = %d\n", DC_speed);

	pfDC_state = state(DC_idle);

}

state_define(DC_busy) {
	//state name
	state_id = DC_busy;

	printf("DC_busy state : speed = %d\n\n\n\n", DC_speed);

	pfDC_state = state(DC_idle);
}

