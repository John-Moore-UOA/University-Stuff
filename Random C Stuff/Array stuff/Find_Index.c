#include <stdio.h>



void FindIndex(int key, int search_array[], int *pos, int length) {

    for(int i=0; i<length; i++) {
        if (key == search_array[i]) {
            *pos = i;
            return;
        }
    }
    *pos = -1;

}

int main(void) {
    int num_array[] = {1, 2, 4, 2, 6, 1, 0, -1};
    int result;

    FindIndex(0, num_array, &result, 8);


    printf("Index = %i", result);
}
