# csci-241-ch05-10
File_of_Fibonacci_Numbers

Using Programming Exercise 5 in Chapter 4 as a starting point, write a program that generates the first 47 values in the Fibonacci series, stores them in an array of doublewords, and writes the doubleword array to a disk file.

You can work in this way: Create a procedure generate_fibonacci to calculate the first 47 values, save them in an array. Then call library function CreateOutputFile, WriteToFile, and CloseFile to generate the disk file. You can download the starter file ch05_Pr10stub.asm that provides the stub procedures for your programming. Your output file is a binary file with its size 188 ( = 4 * 47) bytes. The following are required: On the left side is the console output, where you can call WriteDec for each Fibonacci number generated. You also have to check the saved Fibonacci number output file as shown on the right side opened by Visual Studio binary editor.
1
1
2
3
5
8
13
21
... ...
1134903170
1836311903
2971215073
   	
00000000  01 00 00 00 01 00 00 00  02 00 00 00 03 00 00 00
00000010  05 00 00 00 08 00 00 00  0D 00 00 00 15 00 00 00
00000020  22 00 00 00 37 00 00 00  59 00 00 00 90 00 00 00
00000030  E9 00 00 00 79 01 00 00  62 02 00 00 DB 03 00 00
00000040  3D 06 00 00 18 0A 00 00  55 10 00 00 6D 1A 00 00
00000050  C2 2A 00 00 2F 45 00 00  F1 6F 00 00 20 B5 00 00
00000060  11 25 01 00 31 DA 01 00  42 FF 02 00 73 D9 04 00
00000070  B5 D8 07 00 28 B2 0C 00  DD 8A 14 00 05 3D 21 00
00000080  E2 C7 35 00 E7 04 57 00  C9 CC 8C 00 B0 D1 E3 00
00000090  79 9E 70 01 29 70 54 02  A2 0E C5 03 CB 7E 19 06
000000A0  6D 8D DE 09 38 0C F8 0F  A5 99 D6 19 DD A5 CE 29
000000B0  82 3F A5 43 5F E5 73 6D  E1 24 19 B1
Notice that the last number 2971215073 is just the hex B11924E1h. The other way to view above binary data is to download some Hex Viewer/Edit, such as Notepad++'s Hex Editor

Where is your output file located?
if test with VS IDE, the file is in the same folder where .vcxproj resides.
if test without IDE, the file is in the same folder where .exe located.
