#include "queue.h"
#include <stdio.h>

void CreateQueue(Queue* pq) {
	pq->front = 0;
	pq->rear = -1;
	pq->size = 0;
}

int QueueFull(Queue* pq) {
	if (pq->size == MAXQUEUE)
		return 1;
	return 0;
}

int QueueEmpty(Queue* pq) {
	if (pq->size == 0)
		return 1;
	return 0;
}

QueueStatus Enqueue(QueueEntry e, Queue* pq) {
	if (QueueFull(pq))
		return QueueIsFull;

	if (pq->rear == MAXQUEUE - 1)
			pq->rear = 0;

	else pq->rear++;

	pq->entry[pq->rear] = e;
	pq->size++;

	return QueueNotFull;
}

QueueStatus Dequeue(QueueEntry* pe,Queue* pq) {
	if (QueueEmpty(pq)) 
		return QueueIsEmpty;

	*pe= pq->entry[pq->front];
	if (pq->front == MAXQUEUE - 1)
		pq->front = 0;

	else
		pq->front++;

	pq->size--;
}

int QueueSize(Queue* pq) {
	return pq->size;
}

QueueStatus QueueFront(Queue* pq, QueueEntry* pe) {
	if (QueueEmpty(pq))
		return QueueIsEmpty;

	*pe = pq->entry[pq->front];
	return QueueNotEmpty;
}

QueueStatus QueueRear(Queue* pq, QueueEntry* pe) {
	if (QueueEmpty(pq))
		return QueueIsEmpty;

	*pe = pq->entry[pq->rear];
	return QueueNotEmpty;
}

void ClearQueue(Queue* pq) {
	pq->front = 0;
	pq->rear = -1;
	pq->size = 0;
}

QueueStatus QueueDisplay(Queue* pq) {
	int i,pos;
	if (QueueEmpty(pq)) 
		return QueueIsEmpty;

	for (pos = pq->front,i=0; i < pq->size; i++) {
		printf("%d\n", pq->entry[pos]);
		if (pos == MAXQUEUE - 1) 
			pos = 0;
		
		else 
			pos++;
		
	}
	return QueueNotEmpty;
}