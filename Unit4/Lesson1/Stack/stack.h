#ifndef STACK_H
#define STACK_H

#define MAXSTACK 10
#define StackEntry int

typedef struct {
	int top;
	StackEntry entry[MAXSTACK];
}stack;

typedef enum {StackIsFull, StackNotFull, StackIsEmpty, StackNotEmpty} StackStatus;

void CreateStack(stack *ps);
int StackFull(stack* ps);
StackStatus Push(StackEntry e, stack* ps);
int StackEmpty(stack* ps);
StackStatus Pop(stack* ps, StackEntry *pe);
StackStatus StackDisplay(stack* ps);
StackStatus StackTop(stack* ps, StackEntry* pe);
int StackSize(stack* ps);
void ClearStack(stack* ps);

#endif