#include "revert_string.h"

void RevertString(char *str)
{
    int i, j;
     char c;
     unsigned len = strlen(str);
     for (i = 0, j = len - 1; i < j; i++, j--) {
         c = str[i];
         str[i] = str[j];
         str[j] = c;
     }
}
