#include "List.h"
#include <stdio.h>

void main() {
	List l;
	CreateList(&l);
	ListEntry i;
	for (i = 0; i < 5; i++) {
		if (InertToList(i, i, &l) == ListNull)
			printf("Allocation Error\n");

		else printf("Inserted Successfully\n");
	}

	if (ListDisplay(&l) == ListIsEmpty)
		printf("List is Empty\n");

	printf("\n");

	if(DeleteFromList(0, &l)==ListIsEmpty)
		printf("List is Empty\n");

	if (ListDisplay(&l) == ListIsEmpty)
		printf("List is Empty\n");

	printf("\n");
	
	if (DeleteFromList(2, &l) == ListIsEmpty)
		printf("List is Empty\n");

	if (ListDisplay(&l) == ListIsEmpty)
		printf("List is Empty\n");

	printf("\n");

	ReplaceNodeData(2, 8, &l);

	if (ListDisplay(&l) == ListIsEmpty)
		printf("List is Empty\n");

	printf("\n");

	printf("Node 1 data = %d\n", getNodeData(1, &l));

	printf("List Size = %d\n", ListSize(&l));
	
}
