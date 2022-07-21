/*
 * state.h
 *
 *  Created on: Jul 20, 2022
 *      Author: tokam
 */

#ifndef STATE_H_
#define STATE_H_

 //Automatic state function generated
#define state_define(_stateFunc_) void ST_##_stateFunc_()
#define state(_stateFunc_) ST_##_stateFunc_

//States Connection
void US_get_distance(int d);
void DC_set_speed(int s);

#endif /* STATE_H_ */
