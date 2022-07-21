/*
 * US.c
 *
 *  Created on: Jul 21, 2022
 *      Author: tokam
 */

#include "US.h"
#include <stdlib.h>

 //variables
int US_distance = 0;
void (*pfUS_state)();
enum US_stateId   state_id;

void US_init() {

	printf("US_init\n");
}

state_define(US_busy) {
	//state name
	state_id = US_busy;

	US_distance = US_Get_distance_random(45, 55, 1);
	printf("US_busy state : distance = %d\n", US_distance);

	US_get_distance(US_distance);

	pfUS_state = state(US_busy);
}

int US_Get_distance_random(int l, int r, int count)
{
	//Generate random number in range l and r
	int d;
	for (d = 0; d < count; d++) {
		int rand_num = (rand() % (r - l + 1)) + l;
		return rand_num;
	}
}

