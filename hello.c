#include <string.h>
#include <stdlib.h>
#include <stdio.h>


int main (int argc, char ** argv) {
   char buff[150];
   printf("Hi, what is your name?\n");
   gets(buff);
   printf("G'day %s", buff);
   return 0;
};

