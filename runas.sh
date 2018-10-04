#!/bin/bash

# Compile, Link, Cean, Run, Echo.
# ARMv8 processor Assembler and linker.
# Example: $ runas.sh fileName // remove .s extension

aarch64-linux-gnu-as -o	$1.o $1.s
aarch64-linux-gnu-gcc -static -o $1 $1.o
rm $1.o
./$1
echo $?

	
