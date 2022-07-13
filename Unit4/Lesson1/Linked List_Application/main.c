#include "List.h"
#include <stdio.h>

int main() {
    List l;
    CreateList(&l);
    int option=0, i=0, selectedId, pos, j;
    Student s;

    while (option != 5){
        printf("Choose one option:\n1: Add student\n2: Delete student\n3: View students\n4: Delete All\n5: Exist\nEnter option number:");
        scanf_s("%d", &option);
        switch (option){
                case 1: {
                    printf("Enter student ID: ");
                    scanf("%d", &s.id);
                    printf("Enter student name: ");
                    scanf("%s", s.name);
                    printf("Enter student height: ");
                    scanf("%f", &s.height);

                    if (InertToList(s, i, &l) == ListNull)
                        printf("Allocation Error\n");

                    else printf("Inserted Successfully\n");
                    i++;
                    break;
                }

                case 2:
                {
                    printf("Enter student ID to be deleted :");
                    scanf_s("%d", &selectedId);
                    Node* pn = l.head;

                    for (j = 0; j < ListSize(&l); j++) {
                        if (pn->entry.id == selectedId){
                            if(DeleteFromList(j, &l)==ListIsEmpty)
                                printf("List is Empty\n");
                            else printf("Deleted Successfully\n") ;
                        }
                        else
                            pn = pn->next;
                    }

                    break;
                }

                case 3:{
                    if (ListDisplay(&l) == ListIsEmpty)
                        printf("List is Empty\n");
                    break;
                }

                case 4: {
                    ClearList(&l);
                    printf("Empty List\n");
                    break;
                }

                case 5:
                    break;

                default: {
                    printf("Wrong option\n");
                    break;
                }
        }

    }
}