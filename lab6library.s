		.data
	; lab5 stuff
	.global	movement
	.global direction
	.global position
	.global	board
	.global gameover

	; lab6 stuff
	.global lab6colorboard
	.global lab6symbolboard
	.global	lab6board1
	.global	lab6board2
	.global	lab6board3
	.global	lab6board4
	.global	lab6board5
	.global	lab6board6
	.global	lab6board7
	.global	lab6board8
	.global	lab6board9
	.global	lab6board10
	.global	lab6board11
	.global	lab6board12
	.global	lab6board13
	.global	lab6board14
	.global	lab6board15
	.global	lab6board16

gameover:	.string	"GAME OVER!", 0x0
movement:	.string	"1",0
direction:	.string "1",0
position:	.string "placeholder",0
board:		.string " ---------- ", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|    *     |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string "|          |", 0xA, 0xD
			.string " ---------- ", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board1:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X 62    X", 0xA, 0xD
			.string "X  51 1 X", 0xA, 0xD
			.string "X  3    X", 0xA, 0xD
			.string "X  47 3 X", 0xA, 0xD
			.string "X    74 X", 0xA, 0xD
			.string "X  5    X", 0xA, 0xD
			.string "X  62   X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0

;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board2:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X42 2 3 X", 0xA, 0xD
			.string "X  643  X", 0xA, 0xD
			.string "X  7   1X", 0xA, 0xD
			.string "X  5    X", 0xA, 0xD
			.string "X    7 1X", 0xA, 0xD
			.string "X    6 5X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board3:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X    3 4X", 0xA, 0xD
			.string "X 4    5X", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X  72  2X", 0xA, 0xD
			.string "X   1  1X", 0xA, 0xD
			.string "X 576   X", 0xA, 0xD
			.string "X     36X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board4:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X164  2 X", 0xA, 0xD
			.string "X   1   X", 0xA, 0xD
			.string "X 5 47  X", 0xA, 0xD
			.string "X6      X", 0xA, 0xD
			.string "X73 352 X", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board5:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X     2 X", 0xA, 0xD
			.string "X3253   X", 0xA, 0xD
			.string "X46    7X", 0xA, 0xD
			.string "X   7   X", 0xA, 0xD
			.string "X     1 X", 0xA, 0xD
			.string "X461   5X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board6:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X      2X", 0xA, 0xD
			.string "X 6     X", 0xA, 0xD
			.string "X 1  6  X", 0xA, 0xD
			.string "X 57 15 X", 0xA, 0xD
			.string "X 4   2 X", 0xA, 0xD
			.string "X 3   73X", 0xA, 0xD
			.string "X  4    X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board7:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X 3   7 X", 0xA, 0xD
			.string "X  7  12X", 0xA, 0xD
			.string "X      6X", 0xA, 0xD
			.string "X     54X", 0xA, 0xD
			.string "X6231   X", 0xA, 0xD
			.string "X     54X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board8:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X2      X", 0xA, 0xD
			.string "X  3216 X", 0xA, 0xD
			.string "X3      X", 0xA, 0xD
			.string "X  1    X", 0xA, 0xD
			.string "X     45X", 0xA, 0xD
			.string "X647  7 X", 0xA, 0xD
			.string "X5      X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board9:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X6 3  1 X", 0xA, 0xD
			.string "X7  6 2 X", 0xA, 0xD
			.string "X   7   X", 0xA, 0xD
			.string "X   23  X", 0xA, 0xD
			.string "X45     X", 0xA, 0xD
			.string "X     4 X", 0xA, 0xD
			.string "X51     X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board10:.string "XXXXXXXXX", 0xA, 0xD
			.string "X5 3 31 X", 0xA, 0xD
			.string "X7 6  4 X", 0xA, 0xD
			.string "X    6  X", 0xA, 0xD
			.string "X    4 1X", 0xA, 0xD
			.string "X527    X", 0xA, 0xD
			.string "X     2 X", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board11:.string "XXXXXXXXX", 0xA, 0xD
			.string "X4   65 X", 0xA, 0xD
			.string "X  2  6 X", 0xA, 0xD
			.string "X     1 X", 0xA, 0xD
			.string "X47 2   X", 0xA, 0xD
			.string "X1  7   X", 0xA, 0xD
			.string "X 3     X", 0xA, 0xD
			.string "X35     X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board12:.string "XXXXXXXXX", 0xA, 0xD
			.string "X653    X", 0xA, 0xD
			.string "X    4 2X", 0xA, 0xD
			.string "X      4X", 0xA, 0xD
			.string "X      2X", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X 7 5713X", 0xA, 0xD
			.string "X6     1X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board13:.string "XXXXXXXXX", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X  5 5  X", 0xA, 0xD
			.string "X  4621 X", 0xA, 0xD
			.string "X31     X", 0xA, 0xD
			.string "X4  67  X", 0xA, 0xD
			.string "X7    23X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board14:.string "XXXXXXXXX", 0xA, 0xD
			.string "X2 25143X", 0xA, 0xD
			.string "X6      X", 0xA, 0xD
			.string "X 7     X", 0xA, 0xD
			.string "X    1  X", 0xA, 0xD
			.string "X       X", 0xA, 0xD
			.string "X  54 6 X", 0xA, 0xD
			.string "X7     3X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board15:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X73    3X", 0xA, 0xD
			.string "X      2X", 0xA, 0xD
			.string "X67    5X", 0xA, 0xD
			.string "X 4 5  2X", 0xA, 0xD
			.string "X      6X", 0xA, 0xD
			.string "X   4  1X", 0xA, 0xD
			.string "X     1 X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6board16:	.string "XXXXXXXXX", 0xA, 0xD
			.string "X 1    7X", 0xA, 0xD
			.string "X 37   6X", 0xA, 0xD
			.string "X  3  12X", 0xA, 0xD
			.string "X  6  4 X", 0xA, 0xD
			.string "X5      X", 0xA, 0xD
			.string "X 4     X", 0xA, 0xD
			.string "X52     X", 0xA, 0xD
			.string "XXXXXXXXX", 0x0


		.text
	.global simple_read_character		; input: reads UART memory
										; output: stores char to r0
										; modifies: r0, r1

	.global read_character		; input: reads UART memory
								; output: stores char to r0
								; modifies: r0, r1, r2, r3

	.global simple_output_character		; input: char in r0
										; output: prints char to PuTTy
										; modifies: r0, r1

	.global output_character	; input: char in r0
								; output: prints char to PuTTy
								; modifies: r0, r1, r2, r3

	.global output_string		; input: string address in r0
								; output: prints string to PuTTy
								; modifies: r0, r1, r2, r3

	.global read_string			; input: string address in r0
								; output: stores NULL-terminated string to that address
								; modifies: r0, r1, r2, r3

	.global uart_init			; input:
								; output: modifies UART memory
								; modifies: r0, r1

	.global gpio_init			; input:
								; output: modifies GPIO memory
								; modifies: r0, r1

	.global read_from_push_btn	; input: reads from GPIO memory
								; output: stores int to r0
								; modifies: r0, r1

	.global illuminate_RGB_LED	; input: int in r0 (red=1, blue=2, green=3, purple=4, yellow=5, white=6)
								; output: lights up RGB LED on Tiva Board
								; modifies: r0, r1, r2

	.global num_digits			; input: int in r0
								; output: int in r0
								; modifies: r0, r1, r2

	.global int2str				; input: int in r0, pointer to string in r1, number of digits in r2
								; output: modifies string in memory
								; modifies: r0, r1, r2, r3

	.global str2int				; input: pointer to string in r0
								; output: int in r0
								; modifies: r0, r1, r2, r3

	.global interrupt_init		; input:
								; output: modifies UART, GPIO memory for interrupts
								; modifies:

	.global timer_init			; input:
								; output: modifies Timer A memory
								; modifies:

								; this version is used for lab 5, not imported in lab 6 so it doesn't overlap
	;.global UART0_Handler		; input:
								; output: modifies positive(1)/negative(2) direction of asterisk as string in memory
								; modifies:

	;.global Switch_Handler		; input:
								; output: modifies horizontal(1)/vertical(2) direction of asterisk as string in memory
								; modifies:

	;.global Timer_Handler		; input:
								; output: modifies asterisk and game board memory and prints out new board to PuTTy
								; modifies:

	.global replace_space		; input: int in r0, ptr_to_position in r1, ptr_to_board in r3
								; output: modifies game board in memory, replaces space with an asterisk
								; modifies: r0, r1, r3

	.global board_color_copy	; input: r0 = copy base address, r1 = board base address
								; output: modifies copy board memory with color positions
								; modifies:

	.global board_symbol_copy	; input: r0 = copy base address, r1 = board base address
								; output: modifies copy board memory with 'O' positions
								; modifies:

	.global ascii_to_int		; input: r0 = ascii int char (#0x30, #0x31, #0x32...#0x39)
								; output: corresponding int in r0
								; modifies: r0

	.global int_to_ascii		; input: r0 = single digit int (1, 2, 3, 4,...9)
								; output: corresponding ascii char in r0
								; modifies: r0

	.global copy_string			; input: r0 = ptr to string, r1 = ptr to string
								; output: copies contents of NULL terminated string in r0 into r1
								; modifies: r0, r1

	.global choose_board		; input: r0 = board version int (1 - 16)
								; output: modifies the color board and symbol board to match the board version
								; modifies: r0, r1


U0FR:				.equ	0x18		; UART0 Flag Register offset
gpio_portF_top:		.equ	0x4002		; GPIO Port F base address (0x50004002)
gpio_portF_bot:		.equ	0x5000
data_offset:		.equ	0x3FC		; GPIO data register offset
gpio_clock_top:		.equ	0x400F		; GPIO clock base address (0x400FE000)
gpio_clock_bot:		.equ	0xE000
clock_off:			.equ	0x608		; GPIO clock offset
pin_dir:			.equ	0x400		; GPIO Pin Direction offset
pin_dig:			.equ	0x51C		; GPIO Pin Digital offset
pullup_resis:		.equ	0x510		; GPIO pullup resistor offset

; lab5 stuff
ptr_to_gameover:	.word	gameover
ptr_to_movement:	.word	movement
ptr_to_direction:	.word	direction
ptr_to_position:	.word	position
ptr_to_board:		.word	board

; lab6 stuff
ptr_to_lab6colorboard:	.word	lab6colorboard
ptr_to_lab6symbolboard:	.word	lab6symbolboard
ptr_to_lab6board1:	.word	lab6board1
ptr_to_lab6board2:	.word	lab6board2
ptr_to_lab6board3:	.word	lab6board3
ptr_to_lab6board4:	.word	lab6board4
ptr_to_lab6board5:	.word	lab6board5
ptr_to_lab6board6:	.word	lab6board6
ptr_to_lab6board7:	.word	lab6board7
ptr_to_lab6board8:	.word	lab6board8
ptr_to_lab6board9:	.word	lab6board9
ptr_to_lab6board10:	.word	lab6board10
ptr_to_lab6board11:	.word	lab6board11
ptr_to_lab6board12:	.word	lab6board12
ptr_to_lab6board13:	.word	lab6board13
ptr_to_lab6board14:	.word	lab6board14
ptr_to_lab6board15:	.word	lab6board15
ptr_to_lab6board16:	.word	lab6board16


gpio_init:
	STMFD SP!,{lr, r4-r11}		; Store register lr, r4-r11 on stack

	MOV r0, #gpio_clock_bot		; initialize GPIO clock base address
	MOVT r0, #gpio_clock_top
	LDR r1, [r0, #clock_off]	; load data in address offset
	ORR r1, r1, #0x20			; enable clock for Port F, modify data (100000)
	STR r1, [r0, #clock_off]	; store back into address

	MOV r0, #gpio_portF_bot		; initialize Port F base address
	MOVT r0, #gpio_portF_top
	LDRB r1, [r0, #pin_dir]		; load data in address offset
	ORR r1, r1, #0xE			; configure pin direction (01110)
	STRB r1, [r0, #pin_dir]		; store back into address

	MOV r0, #gpio_portF_bot		; initialize Port F base address
	MOVT r0, #gpio_portF_top
	LDRB r1, [r0, #pin_dig]		; load data in address offset
	ORR r1, r1, #0x1E			; configure pins as digital (11110)
	STRB r1, [r0, #pin_dig]		; store back into address

	MOV r0, #gpio_portF_bot		; initialize Port F base address
	MOVT r0, #gpio_portF_top
	LDRB r1, [r0, #pullup_resis]; load data in address offset
	ORR r1, r1, #0x10			; enable pull-up resistor for SW1 (10000)
	STRB r1, [r0, #pullup_resis]; store back into address

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



read_string:				; takes in string address at r0 and stores chars to that address
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r9, r0				; store string address from r0 to r9
	MOV r8, #0xD			; stores ascii value of ENTER key
read_string_loop:			; keep reading chars in r0 and store into string until we have a ENTER key char
	BL read_character
	BL output_character
	CMP r0, r8
	BEQ read_done			; if char is ENTER key, branch to read_done
	STRB r0, [r9]			; store char to address at r9
	ADD r9, #0x1			; move address up by 1 byte
	B read_string_loop

read_done:
	MOV r0, #0x0			; add NULL character to end of string
	STRB r0, [r9]

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



output_string:				; takes in base address of string at r0
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r9, r0				; store string address from r0 to r9
	MOV r8, #0x0			; store NULL ascii value into r8
output_string_loop:
	LDRB r0, [r9]			; get a char from address at r9
	CMP	r0, r8
	BEQ output_done			; if char is NULL char, branch to output_done
	BL output_character		; print char to putty
	ADD r9, #0x1			; increment address by 1 byte
	B output_string_loop

output_done:

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



simple_read_character:
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r1, #0xC000
	MOVT r1, #0x4000		; initialize base address of UARTDR (UART Data Register) into r1
	LDRB r0, [r1]			; read byte from ARM memory register to r0 (recieve register)


	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



read_character:
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r1, #0xC000
	MOVT r1, #0x4000		; initialize base address of UARTDR (UART Data Register) into r1

input_loop:
	LDRB r2, [r1, #U0FR]	; access the byte in UARTFR (UART Flag Register)
	AND r3, r2, #0x10		; puts value of RXFE in r3
	MOV r4, #0				; stores 0 in r4 for CMP
	CMP r3, r4				; compare value of RXFE
	BNE input_loop			; if RXFE != 0, branch to input_loop and check again

	LDRB r0, [r1]			; read byte from ARM memory register to r0 (recieve register)


	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr


simple_output_character:
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r1, #0xC000
	MOVT r1, #0x4000		; initialize base address of UARTDR (UART Data Register) into r1
	STRB r0, [r1]			; store byte from r0 to ARM memory register (transmit register)

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



output_character:
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r1, #0xC000
	MOVT r1, #0x4000		; initialize base address of UARTDR (UART Data Register) into r1

output_loop:
	LDRB r2, [r1, #U0FR]	; access the byte in UARTFR (UART Flag Register) into r2
	AND r3, r2, #0x20		; puts value of TXFF in r3
	MOV r4, #0				; stores 0 in r4 for CMP
	CMP r3, r4				; compare value of TXFF
	BNE output_loop			; if TXFF != 0, branch to output_loop and check again

	STRB r0, [r1]			; store byte from r0 to ARM memory register (transmit register)

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



uart_init:
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r0, #0xE618		; store address ptr in r0
	MOVT r0, #0x400F
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #1		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xE608		; store address ptr in r0
	MOVT r0, #0x400F
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #1		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xC030		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #0		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xC024		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #8		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xC028		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #44		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xCFC8		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #0		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xC02C		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #0x60	; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0xC030		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	MOV r2, #0x301
	ORR r1, r1, r2		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0x451C		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #0x03	; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0x4420		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #0x03		; ORR data
	STR r1, [r0]		; store new byte into address

	MOV r0, #0x452C		; store address ptr in r0
	MOVT r0, #0x4000
	LDR r1, [r0]		; get byte at that address
	ORR r1, r1, #0x11	; ORR data
	STR r1, [r0]		; store new byte into address

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr



num_digits:
	STMFD r13!, {r14, r4-r11}	; Store register lr(r14), r4-r11 on stack(r13)

	MOV r1, #0			; initialize Number of Digits to 0
	MOV r2, #10			; intitialize 10 into register for division

Divide1:
	SDIV r0, r0, r2		; divide interger in r0 by 10
	ADD r1, r1, #1		; add one to the number of digits
	CMP r0, #0			; is integer in r0 equal to 0
	BNE Divide1			; branch to Divide1

	MOV r0, r1			; put the number of digits into r0


	LDMFD r13!, {r14, r4-r11}
	MOV pc, lr



str2int:
	STMFD r13!, {r14, r4-r11}

	MOV r1, #0			; initialize i = 0

Load:
	LDRB r2, [r0]		; load char from address pointed to by r0
	CMP r2, #0			; compare char to 0/NULL
	BEQ Exit1			; if zero, branch to exit
	MOV r3, #10			; store 10 into r3
	MUL r1, r1, r3		; multiply i by 10
	SUB r4, r2, #48		; subtract 0x30 from the character and store into digit
	ADD r1, r1, r4		; add digit to i
	ADD r0, r0, #1		; add 1 to pointer
	BL Load				; loop back to load

Exit1:
	Mov r0, r1			; return integer to r0

	LDMFD r13!, {r14, r4-r11}
	MOV pc, lr



int2str:
	STMFD r13!, {r14, r4-r11}

	ADD r1, r1, r2		; add number of digits to pointer
	MOV r3, #0			; store NULL to r3
	STRB r3, [r1]		; store NULL at address pointed to by pointer in r1
	SUB r1, r1, #1		; subtract 1 from pointer
	MOV r4, #10			; initialize r4 to int 10

Divide2:
	SDIV r5, r0, r4		; divide integer by 10 to r5
	MUL r6, r5, r4		; multiply quotient by 10 to r6
	SUB r7, r0, r6		; subtract product from integer to r7
	ADD r8, r7, #48		; add 0x30 to difference to get ASCII value
	STRB r8, [r1]		; store ASCII value of digit at address pointed to by pointer
	MOV r0, r5			; eliminate least significant digit from integer
	CMP r0, #0			; is integer equal to zero?
	BEQ Exit2			; finished if integer = 0
	SUB r1, r1, #1		; subtract 1 from pointer
	BL Divide2			; loop back to Divide2

Exit2:

	LDMFD r13!, {r14, r4-r11}
	MOV pc, lr



read_from_push_btn:				; uses r0, r1, returns data in r0
	STMFD SP!,{lr, r4-r11}		; Store register lr, r4-r11 on stack

	MOV r0, #gpio_portF_bot			; initialize portF base address into r0
	MOVT r0, #gpio_portF_top
	LDRB r1, [r0, #data_offset]		; load data register into r1
	AND r1, r1, #0x10				; check pin 4 - fifth bit (10000)
	CMP r1, #0x10					; compare bit
	BEQ read_equal
	MOV r0, #0x1					; if bit is 0, button is being pressed, return 1 in r0
	B read_end

read_equal:
	MOV r0, #0x0					; if bit is 1, button is not being pressed, return 0 in r0

read_end:

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr


illuminate_RGB_LED:		; uses r0, r1, r2: takes in color in r0 (int no_color = 0 blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7) and modifies data register in memory
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r1, #gpio_portF_bot		; initialize portF base address into r1
	MOVT r1, #gpio_portF_top
	LDR r2, [r1, #data_offset]		; load data register into r2
	AND r2, r2, #0x0				; remove previous color

	CMP r0, #0x0					; check which color it is, branch to appropriate color
	BEQ no_color
	CMP r0, #0x1
	BEQ blue
	CMP r0, #0x2
	BEQ red
	CMP r0, #0x3
	BEQ green
	CMP r0, #0x4
	BEQ cyan
	CMP r0, #0x5
	BEQ white
	CMP r0, #0x6
	BEQ purple
	CMP r0, #0x7
	BEQ yellow
	B illuminate_end				; catches input that is not a color

no_color:
	AND r2, r2, #0x2				; 0000
	STR r2, [r1, #data_offset]
	B illuminate_end
red:								; store/turn on the color in data register
	ORR r2, r2, #0x2				; 0010
	STR r2, [r1, #data_offset]
	B illuminate_end

blue:
	ORR r2, r2, #0x4				; 0100
	STR r2, [r1, #data_offset]
	B illuminate_end

green:
	ORR r2, r2, #0x8				; 1000
	STR r2, [r1, #data_offset]
	B illuminate_end

purple:
	ORR r2, r2, #0x6				; 0110
	STR r2, [r1, #data_offset]
	B illuminate_end

yellow:
	ORR r2, r2, #0xA				; 1010
	STR r2, [r1, #data_offset]
	B illuminate_end

white:
	ORR r2, r2, #0xE				; 1110
	STR r2, [r1, #data_offset]
	B illuminate_end

cyan:
	ORR r2, r2, #0xD				; 1100
	STR r2, [r1, #data_offset]
	B illuminate_end

illuminate_end:


	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr



interrupt_init:
	STMFD SP!,{r0-r12,lr} ; Store register lr on stack

	; initialization for UART interrputs
	MOV r0, #0xC000			; initialize UART0 base address
	MOVT r0, #0x4000
	LDRB r1, [r0, #0x038]	; access UART Interrupt Mask register (UARTIM)
	ORR r1, r1, #0x10		; set RXIM bit to 1 (allows interrupt to be triggered)
	STRB r1, [r0, #0x038]

	MOV r0, #0xE000			; initialize EN0 base address
	MOVT r0, #0xE000
	LDRB r1, [r0, #0x100]	; access Interrupt Set Enable Register (EN0)
	ORR r1, r1, #0x20		; set UART0 bit to 1 (configure processor to allow UART0 to interrupt processor)
	STRB r1, [r0, #0x100]

	; initialization for GPIO interrupts
	MOV r0, #0x5000			; initialize GPIO Port F base address
	MOVT r0, #0x4002
	LDRB r1, [r0, #0x404]	; access GPIO Interrupt Sense register (GPIOIS)
	BFC r1, #4, #1			; set pin 4 to '0' (enable Edge Sensitive)
	STRB r1, [r0, #0x404]

	MOV r0, #0x5000			; initialize GPIO Port F base address
	MOVT r0, #0x4002
	LDRB r1, [r0, #0x408]	; access GPIO Interrupt Both Edges register (GPIOIBE)
	BFC r1, #4, #1			; set pin 4 to '0' (enable single edge trigger)
	STRB r1, [r0, #0x408]

	MOV r0, #0x5000			; initialize GPIO Port F base address
	MOVT r0, #0x4002
	LDRB r1, [r0, #0x40C]	; access GPIO Interrupt Event register (GPIOIV)
	BFC r1, #4, #1			; set pin 4 to '0' (enable Falling Edge = button press down)
	STRB r1, [r0, #0x40C]

	MOV r0, #0x5000			; initialize GPIO Port F base address
	MOVT r0, #0x4002
	LDRB r1, [r0, #0x410]	; access GPIO Interrupt Mask register (GPIOIM)
	ORR r1, r1, #0x10		; set pin 4 to '1' (allows interrupt to be triggered)
	STRB r1, [r0, #0x410]

	MOV r0, #0xE000			; initialize EN0 base address
	MOVT r0, #0xE000
	LDR r1, [r0, #0x100]	; access Interrupt Set Enable Register (EN0)
	MOV r2, #0x1			; set GPIOF bit to 1 (configure processor to allow GPIO port F to interrupt processor)
	BFI r1, r2, #30, #1
	STR r1, [r0, #0x100]

	; Your code is placed here

	LDMFD sp!, {r0-r12,lr}
	MOV pc, lr



timer_init:
	STMFD SP!,{r0-r12,lr} ; Preserve registers on the stack

	MOV r0, #0xE000			; General Purpose Timer base address
	MOVT r0, #0x400F
	LDR r1, [r0, #0x604]	; access RCGCTIMER (General Purpose Timer Run Mode Clock Gating Control Register)
	ORR r1, r1, #0x1		; enable clock for Timer0
	STR r1, [r0, #0x604]

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDR r1, [r0, #0x00C]	; access GPTMCTL (General Purpose Timer Control Register)
	BFC r1, #0, #1			; disable Timer A
	STR r1, [r0, #0x00C]

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDR r1, [r0, #0x000]	; access GPTMCFG (General Purpose Timer Configuration Register)
	BFC r1, #0, #3			; enable Configuration 0
	STR r1, [r0, #0x000]

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDR r1, [r0, #0x004]	; access GPTMTAMR (General Purpose Timer Timer A Mode Register)
	MOV r2, #0x2			; enable periodic mode (write 2 to TAMR)
	BFI r1, r2, #0, #2
	STR r1, [r0, #0x004]

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	MOV r1, #0x2400			; 1 second per interval (16 MHz)
	MOVT r1, #0x00F4
	STR r1, [r0, #0x028]	; access GPTMTAILR (General Purpose Timer Interval Load Register)

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDR r1, [r0, #0x018]	; access GPTMIMR (General Purpose Timer Interrupt Mask Register)
	ORR r1, r1, #0x1		; enable Timer A Time Out Interrupt Mask (TATOIM)
	STR r1, [r0, #0x018]

	MOV r0, #0xE000			; initialize EN0 base address
	MOVT r0, #0xE000
	LDR r1, [r0, #0x100]	; access Interrupt Set Enable Register (EN0)
	MOV r2, #0x1			; set GPT0 (General Purpose Timer 0) bit to 1
	BFI r1, r2, #19, #1
	STR r1, [r0, #0x100]

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDR r1, [r0, #0x00C]	; access GPTMCTL (General Purpose Timer Control Register)
	ORR r1, r1, #0x1		; enable Timer A
	STR r1, [r0, #0x00C]



	 ; Your code is placed here
 	LDMFD sp!, {r0-r12,lr}
 	MOV pc, lr



UART0_Handler:
	STMFD SP!,{r0-r12,lr} ; Store register lr on stack

	MOV r0, #0xC000			; initialize UART0 base address
	MOVT r0, #0x4000

	LDRB r1, [r0, #0x044]	; access UART Interrupt Clear Register (UARTICR)
	ORR r1, r1, #0x10		; set RXIC bit to 1
	STRB r1, [r0, #0x044]

	BL simple_read_character	; get character
	CMP r0, #0x20				; if char is ''
	BNE End_direction
	LDR r4, ptr_to_direction	; load pointer into r4
	LDRB r3, [r4]				; access number/char at the address of pointer
	CMP r3, #0x31
	BEQ Positive				; 1 = positive
	B Negative					; 2 = negative

Positive:
	MOV r3, #0x32				; change number/char of pointer to 2
	STRB r3, [r4]
	B End_direction

Negative:
	MOV r3, #0x31				; change number/char of pointer to 1
	STRB r3, [r4]
	B End_direction

End_direction:
	; Your code is placed here

	LDMFD sp!, {r0-r12,lr}
	BX lr



Switch_Handler:
	STMFD SP!,{r0-r12,lr} ; Store register lr on stack

	MOV r0, #0x5000			; initialize GPIO Port F base address
	MOVT r0, #0x4002
	LDRB r1, [r0, #0x41C]	; access GPIO Interrupt Clear register (GPIOICR)
	ORR r1, r1, #0x10		; set pin 4 to '1' (clears interrupt)
	STRB r1, [r0, #0x41C]

	LDR r4, ptr_to_movement	; load pointer into r4
	LDRB r3, [r4]			; access number/char at the address of pointer
	CMP r3, #0x31
	BEQ Horizontal			; 1 = horizontal
	B Vertical				; 2 = vertical

Horizontal:
	MOV r3, #0x32				; change number/char of pointer to 2
	STRB r3, [r4]
	B End_movement

Vertical:
	MOV r3, #0x31				; change number/char of pointer to 1
	STRB r3, [r4]
	B End_movement
	; Your code is placed here

End_movement:

	LDMFD sp!, {r0-r12,lr}
	BX lr



Timer_Handler:
	STMFD SP!,{r0-r12,lr} ; Preserve registers on the stack

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDRB r1, [r0, #0x024]	; access GPTMICR (GPTM Interrupt Clear Register)
	ORR r1, r1, #0x1		; write '1' to TATOCINT
	STRB r1, [r0, #0x024]

	LDR r4, ptr_to_movement
	LDR r5, ptr_to_direction
	LDR r6, ptr_to_position
	LDR r8, ptr_to_board
	MOV r0, r6
	BL str2int
	MOV r7, r0				; r7 = position (linear array position)
	MOV r9, #0x20
	STRB r9, [r8, r7]		; replace '*' with space char

	LDRB r2, [r4]			; r2 = horizontal(1)/vertical(2)
	LDRB r3, [r5]			; r3 = positive(1)/negative(2)
	CMP r2, #0x31		; check if movement is horizontal(1) or vertical(2)
	BEQ Horz
	B Vert

Vert:
	CMP r3, #0x31		; check if direction is positive(1) or negative(2)
	BEQ VPos
	B VNeg
VPos:
	SUB r7, r7, #14		; get new position
	LDRB r9, [r8, r7]	; check if char at new position is not a wall
	CMP r9, #0x20
	BNE TIMER_END
	MOV r0, r7			; initialize replace_space - update position as string in memory
	MOV r1, r6
	MOV r3, r8
	BL replace_space
	B Update_board

VNeg:
	ADD r7, r7, #14		; get new position
	LDRB r9, [r8, r7]	; check if char at new position is not a wall
	CMP r9, #0x20
	BNE TIMER_END
	MOV r0, r7			; initialize replace_space - update position as string in memory
	MOV r1, r6
	MOV r3, r8
	BL replace_space
	B Update_board

Horz:
	CMP r3, #0x31		; check if direction is positive(1) or negative(2)
	BEQ HPos
	B HNeg
HPos:
	ADD r7, r7, #1		; get new position
	LDRB r9, [r8, r7]	; check if char at new position is not a wall
	CMP r9, #0x20
	BNE TIMER_END
	MOV r0, r7			; initialize replace_space - update position as string in memory
	MOV r1, r6
	MOV r3, r8
	BL replace_space
	B Update_board

HNeg:
	SUB r7, r7, #1		; get new position
	LDRB r9, [r8, r7]	; check if char at new position is not a wall
	CMP r9, #0x20
	BNE TIMER_END
	MOV r0, r7			; initialize replace_space - update position as string in memory
	MOV r1, r6
	MOV r3, r8
	BL replace_space

Update_board:
	MOV r0, #0xC			; clear previous board
	BL output_character
	MOV r0, r8				; print new board with updated position
	BL output_string

	LDMFD sp!, {r0-r12,lr}
	BX lr



TIMER_END:
	MOV r0, #0xC			; clear previous board
	BL output_character

	LDR r0, ptr_to_gameover	; print new board to PuTTy
	BL output_string

	B Exit_Entire_Program



replace_space:   ;r0 = int, r1 = ptr_to_position, r3 = ptr_to_board
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r8, r3
	MOV r7, r0
	MOV r10, r1
	BL num_digits
	MOV r2, r0
	MOV r1, r10
	MOV r0, r7
	BL int2str			; update position in memory
	MOV r9, #0x2A
	STRB r9, [r8, r7]	; replace space char with '*'

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr


board_color_copy:   ;r0 = copy base address, r1 = board base address
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r4, #0x0			; initialize address offset
Color_loop:
	LDRB r5, [r1, r4]		; get char at board address + offset
	STRB r5, [r0, r4]		; store/replace char into copy address
	ADD r4, r4, #0x1		; update offset
	CMP r5, #0x0			; check if char is NULL
	BNE Color_loop

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr


board_symbol_copy:   ;r0 = copy base address, r1 = board base address
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r4, #0x0			; initialize address offset
Symbol_loop:
	LDRB r5, [r1, r4]		; get char at board address + offset

	CMP r5, #0x31
	BEQ Insert_O
	CMP r5, #0x32			;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
	BEQ Insert_O
	CMP r5, #0x33
	BEQ Insert_O
	CMP r5, #0x34
	BEQ Insert_O
	CMP r5, #0x35
	BEQ Insert_O
	CMP r5, #0x36
	BEQ Insert_O
	CMP r5, #0x37
	BEQ Insert_O
	B Not_O

Insert_O:
	MOV r6, #0x4F		; initialize 'O' in r6
	STRB r6, [r0, r4]	; store 'O' char into copy address
	ADD r4, r4, #0x1	; update offset
	B Symbol_loop

Not_O:
	STRB r5, [r0, r4]		; store/replace char into copy address
	ADD r4, r4, #0x1		; update offset
	CMP r5, #0x0			; check if char is NULL
	BNE Symbol_loop

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr



ascii_to_int:		; r0 = single ascii int (#0x30, #0x31, #0x32, #0x33... #0x39)
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	CMP r0, #0x30
	BEQ Zero
	CMP r0, #0x31
	BEQ One
	CMP r0, #0x32
	BEQ Two
	CMP r0, #0x33
	BEQ Three
	CMP r0, #0x34
	BEQ Four
	CMP r0, #0x35
	BEQ Five
	CMP r0, #0x36
	BEQ Six
	CMP r0, #0x37
	BEQ Seven
	CMP r0, #0x38
	BEQ Eight
	CMP r0, #0x39
	BEQ Nine
	B End_ascii_to_int

Zero:
	MOV r0, #0x0
	B End_ascii_to_int
One:
	MOV r0, #0x1
	B End_ascii_to_int
Two:
	MOV r0, #0x2
	B End_ascii_to_int
Three:
	MOV r0, #0x3
	B End_ascii_to_int
Four:
	MOV r0, #0x4
	B End_ascii_to_int
Five:
	MOV r0, #0x5
	B End_ascii_to_int
Six:
	MOV r0, #0x6
	B End_ascii_to_int
Seven:
	MOV r0, #0x7
	B End_ascii_to_int
Eight:
	MOV r0, #0x8
	B End_ascii_to_int
Nine:
	MOV r0, #0x9
	B End_ascii_to_int

End_ascii_to_int:

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr



int_to_ascii:		; r0 = single digit int (1, 2, 3, 4, 5..., 9)
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	CMP r0, #0
	BEQ Ascii_0
	CMP r0, #1
	BEQ Ascii_1
	CMP r0, #2
	BEQ Ascii_2
	CMP r0, #3
	BEQ Ascii_3
	CMP r0, #4
	BEQ Ascii_4
	CMP r0, #5
	BEQ Ascii_5
	CMP r0, #6
	BEQ Ascii_6
	CMP r0, #7
	BEQ Ascii_7
	CMP r0, #8
	BEQ Ascii_8
	CMP r0, #9
	BEQ Ascii_9

Ascii_0:
	MOV r0, #0x30
	B End_int_to_ascii
Ascii_1:
	MOV r0, #0x31
	B End_int_to_ascii
Ascii_2:
	MOV r0, #0x32
	B End_int_to_ascii
Ascii_3:
	MOV r0, #0x33
	B End_int_to_ascii
Ascii_4:
	MOV r0, #0x34
	B End_int_to_ascii
Ascii_5:
	MOV r0, #0x35
	B End_int_to_ascii
Ascii_6:
	MOV r0, #0x36
	B End_int_to_ascii
Ascii_7:
	MOV r0, #0x37
	B End_int_to_ascii
Ascii_8:
	MOV r0, #0x38
	B End_int_to_ascii
Ascii_9:
	MOV r0, #0x39
	B End_int_to_ascii

End_int_to_ascii:

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	MOV pc, lr



choose_board:				; takes in an int in r0 (board version) , modifies the color board and symbol board to match the board version
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	CMP r0, #1		; if int is 1 = board 1
	BEQ B1
	CMP r0, #2		; if int is 2 = board 2
	BEQ B2
	CMP r0, #3		; if int is 3 = board 3
	BEQ B3
	CMP r0, #4		; etc...
	BEQ B4
	CMP r0, #5
	BEQ B5
	CMP r0, #6
	BEQ B6
	CMP r0, #7
	BEQ B7
	CMP r0, #8
	BEQ B8
	CMP r0, #9
	BEQ B9
	CMP r0, #10
	BEQ B10
	CMP r0, #11
	BEQ B11
	CMP r0, #12
	BEQ B12
	CMP r0, #13
	BEQ B13
	CMP r0, #14
	BEQ B14
	CMP r0, #15
	BEQ B15
	CMP r0, #16
	BEQ B16

B1:
	LDR r0, ptr_to_lab6symbolboard		; update symbol board with all ['O' char] positions copied from board 1
	LDR r1, ptr_to_lab6board1
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard		; update color board with all [color int] positions copied from board 1
	LDR r1, ptr_to_lab6board1
	BL board_color_copy

	B Choose_board_end
B2:
	LDR r0, ptr_to_lab6symbolboard		; update symbol board with all ['O' char] positions copied from board 2
	LDR r1, ptr_to_lab6board2
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard		; update color board with all [color int] positions copied from board 1
	LDR r1, ptr_to_lab6board2
	BL board_color_copy

	B Choose_board_end
B3:
	LDR r0, ptr_to_lab6symbolboard		; etc...
	LDR r1, ptr_to_lab6board3
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard		; etc...
	LDR r1, ptr_to_lab6board3
	BL board_color_copy

	B Choose_board_end
B4:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board4
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board4
	BL board_color_copy

	B Choose_board_end
B5:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board5
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board5
	BL board_color_copy

	B Choose_board_end
B6:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board6
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board6
	BL board_color_copy

	B Choose_board_end
B7:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board7
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board7
	BL board_color_copy

	B Choose_board_end
B8:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board8
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board8
	BL board_color_copy

	B Choose_board_end
B9:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board9
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board9
	BL board_color_copy

	B Choose_board_end
B10:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board10
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board10
	BL board_color_copy

	B Choose_board_end
B11:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board11
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board11
	BL board_color_copy

	B Choose_board_end
B12:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board12
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board12
	BL board_color_copy

	B Choose_board_end
B13:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board13
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board13
	BL board_color_copy

	B Choose_board_end
B14:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board14
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board14
	BL board_color_copy

	B Choose_board_end
B15:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board15
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board15
	BL board_color_copy

	B Choose_board_end
B16:
	LDR r0, ptr_to_lab6symbolboard
	LDR r1, ptr_to_lab6board16
	BL board_symbol_copy

	LDR r0, ptr_to_lab6colorboard
	LDR r1, ptr_to_lab6board16
	BL board_color_copy

	B Choose_board_end

Choose_board_end:

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr




Exit_Entire_Program:

	.end
