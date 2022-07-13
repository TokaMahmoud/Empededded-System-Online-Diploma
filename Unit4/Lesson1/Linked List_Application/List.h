#ifndef LIST_H
#define LIST_H

typedef struct
{
    int id;
    char name[50];
    float height;
}Student;

#define MAXLIST 100
#define ListEntry Student

typedef struct node {
    ListEntry entry;
    struct node* next;

}Node;

typedef struct {
    Node* head;
    int size;
}List;

typedef enum {
    ListNull,
    ListNoError,
    ListIsEmpty
}ListStatus;

void CreateList(List* pl);
ListStatus InertToList(ListEntry e, int position, List* pl);
int ListEmpty(List* pl);
ListStatus DeleteFromList(int pos, List* pl);
ListStatus ListDisplay(List* pl);
ListEntry getNodeData(int pos, List* pl);
void ReplaceNodeData(int pos, ListEntry e, List* pl);
int ListSize(List* pl);
void ClearList(List* pl);

#endif
