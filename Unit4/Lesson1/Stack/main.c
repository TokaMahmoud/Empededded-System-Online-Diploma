#include "stack.h"
#include <stdio.h>

void main() {
	stack s;
	CreateStack(&s);
	StackEntry i;
	for (i = 0; i < 5; i++) {
		if (Push(i, &s) == StackIsFull) 
			printf("Stack is full\n");
		
		else printf("Pushed Successfully\n") ;
	}

	if (Pop(&s, &i) == StackIsEmpty)
		printf("Stack is Empty");
	else printf("Poped item = %d\n", i);

	//ClearStack(&s);

	if (StackDisplay(&s)== StackIsEmpty)
		printf("Stack is Empty\n");

	if (StackTop(&s, &i) == StackIsEmpty)
		printf("Stack is Empty\n");
	else printf("Stake Top = %d\n", i);

	printf("Stack Size: %d\n", StackSize(&s));
}