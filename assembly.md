; Used to declare intial data or constants
section.data

; Used for declaring variables
section.bss

; Text section is used for keeping the actual code. This section must begin with declaring global _start to tell the kernel where execution begin
section.text
	global _start
_start:

; [label] mnemonic [operands] [;comment]

INC COUNT			; Increment the memory variable COUNT

MOV TOTAL, 48		; Transfer the value 48 in the memory variable TOTAL

ADD AH, BH			; Add the content of the BH register into the AH register

AND MASK1, 128		; Perform AND operation on the variable MASK1 and 128

ADD MARKS, 10		; Add 10 to the bariable MARKS
MOV AL, 10			; Transfer the value 10 to the AL register

;------------------------------- Data Registers ----------------------------------

; AX is the primary accumulator, used in input/output and most arithmetic instructions
	;; In multiplication operation one operand is stored in EAX or AX or AL register according
	;; to the size of the operand.

; BX is kown as the base register, used in indexed addressing

; CX is known as the count register, as the ECX, CX registers store the loop count in iterative operations

; DX is kown as the data register, also used in input/output operations
	;; Also used with AX register along with DX for multiply and divide operations involving large values

; ----------------------------- Pointer Registers ---------------------------------

; The pointers registers are 32-bit EIP, ESP, and EBP registers and corresponding 16-bit right portions
	;; IP, SP, BP, There are three categories of pointer registers

; IP - Instruction Pointer
	;; The 16-bit IP register stores the offset address of the next instruction to be executed
	;; IP in association with the CS register (CS:IP) gives the complete address of the current instruction in the code segment

; SP - Stack Pointer
	;; The 16-bit SP register provides the offset value within the program stack, SP in association with the SS register (SS:SP)
	;; refers to be current position of data or address within the program stack.

; ------------------------------ Index Registers -----------------------------------

; The 32-bit index registers, ESI and EDI, and their 16-bit rightmost portions. SI and DI, are used for indexed addressing and sometimes used
; in addition and subtraction. There are two sets of index pointers.

; Source Index - It is used as soruce index for string operations.

; Destination Index - It is used asdestination index for string operations

; ------------------------------- Control Registers -------------------------------

; The 32-bit instruction pointer register and the 32-bit glags register combined are considered as the control registers.
; Many instructions involve comparsions and mathematical calculations and change the status of the flags and some other
; conditional instructions test the value of these status flags to take the control flow to other location.

; Overflow Flag (OF) - It indicates the overflow of a high order bit of data after a signed arithmetic operation

; Direction Flag (DF) - It determines left or right direction for moving or comparing string data. When the DF value is 0
	;; the string operation takes left to right direction and when the value is set to 1, the string operation takes right to left direction.

; Interrupt Flag (IF) - It determines whether the external interrupts like keyboard entry etc... are to be ignored or processed. It disables
	;; the external interrupt when the value is 0 and enables interrupts when set to 1.

; Trap Flag (TF) - It allows setting the operation of the processor in single-step mode. The DEBUG program we used sets the trap flag,
	;; so we could step through the execution one instruction at a time.

; Sign Flag (SF) - It shows the sign of the result of an arithmetic operation. This flag is set according to the sign of a data item
	;; following the arithmetic operation. The sign is indicated by the high-order of leftmost bit. A positive results clears the value
	;; of SF to 0 and negative result sets it to 1.

; Zero Flag (ZF) - It indicates the result of an arithmetic or comparsion operation. A nonzero results clears the zero flag to 0,
	;; and a zero result sets it to 1.

; Auxiliary Carry Flag (AF) - It contains the carry from bit 3 to bit 4 following an arithmetic operation. Used for specialized arithmetic.
	;; The AD is set when a 1-byte arithmetic operation caused a carry from bit 3 into bit 4.

; Parity Flag (PF) - It indicates the total number of 1-bits in the result obtaine from an arithmetic operation. An even number of 1-bits clears
	;; the parity flag to 0 and an odd number of 1-bits sets the parity flag to 1.

; Carry Flag (CF) - It contains the carry of 0 or 1 from a high-order bit after an arithmetic operation. It also stores
	;; the contents of last bit of a shift or rotate operation.

; FLAG:		|    |	  |	   |    |  O |  D |  I |  T |  S |  Z |    |  A |    |  P |    |  C |
; Bit no:	| 15 | 14 | 13 | 12 | 11 | 10 |  9 |  8 |  7 |  6 |  5 |  4 |  3 |  2 |  1 |  0 |


; ------------------------------- Segment Registers -------------------------------

; Segments are specific areas defined in a program for containing data, code and stack.

; Code Segment - It contains all the instructions to be executed. A 16-bit code segment register
	;; or CS register stores the starting address of the code segment.

; Data Segment - It contains data, constrants and work areas. A 16-bit Data segment register or
	;; DS register stores the starting address of the data segment.

; Stack Segment - It contains data and return address of procedures or subroutines. It is implemented
	;; as a 'stack' data structure. The stack segment register or SS register stores the starting address of the stack.

; FS - GS - Segment registers depending on the OS they are given different purposes.
  ;; Windows 64 bit - GS - Used to point to operating system defined structures. - Manage thread specific memory
  ;; Linux - FS | GS - Used by OS kernels to access thread specific memory. - Access CPU specific memory

; Aside from CS, DS, and SS there are other segment registers ES, FS, and GS to provide additional segments for storing data.

; ---------------------------------------------------------------------------------

