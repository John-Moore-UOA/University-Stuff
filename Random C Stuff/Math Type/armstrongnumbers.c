#include <stdio.h>
#include <math.h>

    // This program will loop through all values between 1 - 100000 Inclusive in search of Armstrong numbers
    //
    // An Armstrong number is:
    // 153 = 1^3 * 5^3 * 3^3
    // int of length 3, (1, 5, 3)
    // each digit to the power of the length of the integer = the original integer value
    //
    // This program will loop through each integer value up to 100000.
    // This value will be split into digits, and added together, 
    // each to the power of the length of the original integer
    //
    // These values will be assessed, and if they pertain to the armstrong number rules,
    // will be stored in a 1-D array of type int
    //
    // These values will be printed out at the end of the programs run


int add_digits(int current_value, int length) {
    
    int digit = 0;
    int value = 0;

    while(current_value != 0) {

        digit = current_value%10;
        current_value /= 10;  // looping through each single digit of integer
        
        value += (int)pow(digit, length); // Add digit to the power of the length into Value  
    }

    return value;
}

int main(void) {

    // max value searching to
    int max = 100000;

    int i;
    int value;
    int int_length;

    // loop through all int values until max value is reached
    for (i=1; i<=max; i++) {

        int_length = floor(log10(abs(i))) + 1; // Number of digits in integer

        value = add_digits(i, int_length);        
        
        // if the current number's digit^length is equal to original integer value
        if (value == i) {
            printf("%d\n", i);
            
        }
    }

    return 0;
}
