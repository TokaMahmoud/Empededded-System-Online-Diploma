/*
 * US.h
 *
 *  Created on: Jul 21, 2022
 *      Author: tokam
 */

#ifndef US_H_
#define US_H_

#include "state.h"

enum US_stateId {
	US_busy
};

state_define(US_busy);

void US_init();
int US_Get_distance_random(int l, int r, int count);
extern void (*pfUS_state)();

#endif /* US_H_ */
