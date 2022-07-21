/*
 * CA.h
 *
 *  Created on: Jul 20, 2022
 *      Author: tokam
 */

#ifndef CA_H_
#define CA_H_

#include "state.h"

enum stateId {
	waiting,
	driving
};

state_define(waiting);
state_define(driving);

extern void (*pfstate)();

#endif /* CA_H_ */
