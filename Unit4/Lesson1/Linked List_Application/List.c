#include "List.h"
#include <stdlib.h>
#include <stdio.h>

void CreateList(List* pl) {
    pl->head = NULL;
    pl->size = 0;
}

ListStatus InertToList(ListEntry e, int pos, List* pl) {
    int i;
    Node* new, * temp;
    new = (Node*)malloc(sizeof(Node));

    if (new) {
        new->entry = e;
        temp = pl->head;

        if (pos == 0) {
            new->next = pl->head;
            pl->head = new;
        }
        else {
            for (i = 0; i < pos - 1; i++)
                temp = temp->next;
            new->next = temp->next;
            temp->next = new;
        }
        pl->size++;
        return ListNoError;
    }
    else
        return ListNull;
}

int ListEmpty(List* pl) {
    return (pl->size == 0);
}

ListStatus DeleteFromList(int pos, List* pl) {
    int i;
    Node* del, * temp;
    temp = pl->head;
    if (ListEmpty(pl))
        return ListIsEmpty;
    else {
        if (pos == 0) {
            pl->head = pl->head->next;
            free(temp);
        }
        else {
            for (i = 0; i < pos - 1; i++)
                temp = temp->next;
            del = temp->next->next;
            free(temp->next);
            temp->next = del;
        }
        pl->size--;
        return ListNoError;
    }
}

ListStatus ListDisplay(List* pl) {
    Node* temp = pl->head;
    int i =0;
    if (ListEmpty(pl))
        return ListIsEmpty;

    else {
        while (temp) {
            printf("Record number %d\n", i);
            printf("ID: %d\n", temp->entry.id);
            printf("Name: %s\n", temp->entry.name);
            printf("Height: %f\n", temp->entry.height);
            temp = temp->next;
            i++;
        }
        return ListNoError;
    }
}

ListEntry getNodeData(int pos, List* pl) {
    int i;
    Node* temp = pl->head;
    for (i = 0; i < pos; i++)
        temp = temp->next;
    return temp->entry;
}

void ReplaceNodeData(int pos, ListEntry e, List* pl) {
    int i;
    Node* temp = pl->head;
    for (i = 0; i < pos; i++)
        temp = temp->next;
    temp->entry = e;
}

int ListSize(List* pl) {
    return pl->size;
}

void ClearList(List* pl) {
    Node* temp;
    while (pl->head) {
        temp = pl->head->next;
        free(pl->head);
        pl->head = temp;
    }
    pl->size = 0;
}