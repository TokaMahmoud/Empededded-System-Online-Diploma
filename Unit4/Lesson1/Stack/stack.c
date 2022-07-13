#include "stack.h"
#include <stdio.h>

void CreateStack(stack* ps) {
	ps->top = -1;
}

int StackFull(stack *ps) {
	if (ps->top == MAXSTACK-1)
		return 1;
	return 0;
}

StackStatus Push(StackEntry e, stack* ps) {
	if (StackFull(ps))
		return StackIsFull;
	
	ps->top++;
	ps->entry[ps->top] = e;
	return StackNotFull;
}

int StackEmpty(stack* ps) {
	if (ps->top == -1)
		return 1;
	return 0;
}

StackStatus Pop(stack* ps, StackEntry *pe) {
	if (StackEmpty(ps))
		return StackIsEmpty;

	*pe = ps->entry[ps->top];
	ps->top--;
	return StackNotEmpty;
}

StackStatus StackDisplay(stack* ps) {
	int i;
	if (StackEmpty(ps))
		return StackIsEmpty;

	for (i = ps->top; i >= 0; i--) {
		printf("%d\n", ps->entry[i]);
	}
	return StackNotEmpty;
}

StackStatus StackTop(stack* ps, StackEntry* pe) {
	if (StackEmpty(ps))
		return StackIsEmpty;
	
	*pe = ps->entry[ps->top];
	return StackNotEmpty;
}

int StackSize(stack* ps) {
	return (ps->top+1);
}

void ClearStack(stack* ps) {
	ps->top = -1;
}