#include <stdio.h>


// take out prime number indexed characters shrinking string
// untill only 1st character remain, print each iteration


unsigned is_prime (int number) {

    if (number == 1) {
        return 0;
    }
    if (number == 2) {
        return 1;
    }
    for (int i=2; i<number; i++) {
        if (number%i == 0) {
            return 0;
        }
    }
    return 1;
}

int length(char *Str) {

    int len = 0;
    while (Str[len] != '\0') {
        len++;
    }

    return len;
}

void remove_prime_chars(char *Str) {

    int str_len = length(Str);
    int count = 0;
    char temp_string[10000] = {0};

    for (int i=0; i<str_len; i++) {
        if (is_prime(i+1) == 0) {
            temp_string[count] = Str[i];
            count++;
        }
    }
    
    for (int i=0; i<count; i++) {
        Str[i] = temp_string[i];
    } Str[count] = '\0';


}

void only_letters(char *Str) {

    int look = 1;

    for (int i=0; i<length(Str); i++) {
        if (!((Str[i] >= 'A' && Str[i] <= 'Z') || (Str[i] >= 'a' && Str[i] <= 'z'))) {

            for (int pos=i; pos<length(Str); pos++) {

                look = 1;
                while(!((Str[pos+look] >= 'A' && Str[pos+look] <= 'Z') || (Str[pos+look] >= 'a' && Str[pos+look] <= 'z'))) {
                    look++;
                }

                if (pos+look <= length(Str)) {
                    Str[pos] = Str[pos+look];

                    pos = pos + (look-1);
                } else {
                    Str[pos] = '\0';
                    break;
                }

            }

        }

    } 

}

void only_lower(char *Str) {
    int i = 0;

    while(Str[i] != '\0') {
        if (Str[i] >= 'A' && Str[i] <= 'Z') {
            Str[i] = Str[i]-('A'-'a');
        }
        i++;
    }
}


int main(void) {

    char Str[] = {"Lore lorem......      Ut tortor pretium viverra suspendisse potenti nullam. Tempus iaculis urna id "};
    //char Str[] = {"Hello,_W___orld!"};

    int iterations = 0;

    printf("\n%s\n", Str);
    only_letters(Str);
    printf("%s\n", Str);
    only_lower(Str);
    printf("%s\n\n", Str);


    while(length(Str) > 1 && iterations < 1000) {

        printf("\n%s", Str);
        remove_prime_chars(Str);

        iterations++;
    }

    printf("\n%s\n\n", Str);
    printf("Number of Iterations: %d\n", iterations);


    return;
}
