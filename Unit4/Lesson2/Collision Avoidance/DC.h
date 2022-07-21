/*
 * DC.h
 *
 *  Created on: Jul 21, 2022
 *      Author: tokam
 */

#ifndef DC_H_
#define DC_H_

#include "state.h"

enum DC_stateId {
	DC_idle,
	DC_busy
};

state_define(DC_idle);
state_define(DC_busy);
void DC_init();
extern void (*pfDC_state)();


#endif /* DC_H_ */
