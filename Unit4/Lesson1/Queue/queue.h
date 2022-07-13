#ifndef QUEUE_H
#define QUEUE_H

#define MAXQUEUE 5
#define QueueEntry int

typedef struct {
	int front;
	int rear;
	unsigned int size;
	QueueEntry entry[MAXQUEUE];
}Queue;

typedef enum { QueueIsFull, QueueNotFull, QueueIsEmpty, QueueNotEmpty } QueueStatus;

void CreateQueue(Queue* pq);
int QueueFull(Queue* pq);
QueueStatus Enqueue(QueueEntry e, Queue* pq);
int QueueEmpty(Queue* pq);
QueueStatus Dequeue(QueueEntry* e, Queue* pq);
QueueStatus QueueFront(Queue* pq, QueueEntry *pe);
QueueStatus QueueRear(Queue* pq, QueueEntry* pe);
int QueueSize(Queue* pq);
void ClearQueue(Queue* pq);
QueueStatus QueueDisplay(Queue* pq);


#endif