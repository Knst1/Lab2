#!/bin/bash

gcc -c revert_string.c main.c -o main.o
# Create static library
ar rcs librs.a revert_string.o
# r	Вставляет файлы в архив (с замещением)
# c	Создать архив
# s	Записывает индекс объектного файла в архив или, если он существует, 
# обновляет его, даже если нет других изменений в архиве
gcc main.o -L. -lrs -o rezult
