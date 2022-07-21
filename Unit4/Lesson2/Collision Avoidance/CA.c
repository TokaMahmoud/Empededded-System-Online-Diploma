/*
 * CA.c
 *
 *  Created on: Jul 20, 2022
 *      Author: tokam
 */

#include <stdio.h>

#include "CA.h"

 //variables
int speed = 0;
int distance = 0;
int threshold = 50;

//State pointer to function
void (*pfstate)();
enum stateId state_id;


void US_get_distance(int d)
{
	distance = d;
	(distance <= threshold) ? (pfstate = state(waiting)) : (pfstate = state(driving));

	printf("US --------------------> CA distance = %d\n", distance);
}

state_define(waiting) {
	//state name
	state_id = waiting;

	//state action
	speed = 0;
	printf("Waiting state: distance = %d, speed = %d\n", distance, speed);

	DC_set_speed(speed);

	
}

state_define(driving) {
	//state name
	state_id = driving;

	//state action
	speed = 30;

	printf("driving state: distance = %d, speed = %d\n", distance, speed);

	DC_set_speed(speed);
}
