#include "queue.h"
#include <stdio.h>

void main() {
	Queue q;
	CreateQueue(&q);
	QueueEntry i;

	for (i = 0; i < 7; i++) {
		if (Enqueue(i, &q) == QueueIsFull)
			printf("Queue Is Full\n");

		else  printf("Enqueued Successfully\n");
	}

	if(Dequeue(&i , &q) == QueueIsEmpty)
		printf("Queue is Empty\n");
	else  printf("Dequeued item: %d\n", i);

	if (Enqueue(8, &q) == QueueIsFull)
		printf("Queue Is Full\n");
	else  printf("Enqueued Successfully\n");

	if(QueueDisplay(&q) == QueueIsEmpty)
		printf("Queue is Empty\n");

	//ClearQueue(&q);

	if (QueueFront(&q, &i) == QueueIsEmpty)
		printf("Queue is Empty\n");
	else printf("Front = %d\n", i);

	if (QueueRear(&q, &i) == QueueIsEmpty)
		printf("Queue is Empty\n");
	else printf("Rear = %d\n", i);

	printf("Queue Size: %d\n", QueueSize(&q));
	
}