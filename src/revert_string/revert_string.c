#include "revert_string.h"

void RevertString(char *str)
{
    int c = strlen(str);
    int j = 0;
  char *t_str;
  t_str = malloc(sizeof(char) * (c + 1));
    for (int i = c - 1; i >= 0; i--)
        t_str[j++] = str[i];
    for (int i = 0; i <c; i++)
        str[i] = t_str[i];
    free(t_str);
}
