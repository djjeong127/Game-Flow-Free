	.data
	.global startscreen
	.global pausedscreen
	.global gameComplete
	.global gameComplete_time
	.global gameBoardVersion
	.global gameCompleteScreen
	.global lines_completeprompt
	.global lines_complete
	.global timeprompt
	.global time

	.global blueComplete
	.global redComplete
	.global greenComplete
	.global cyanComplete
	.global whiteComplete
	.global magentaComplete
	.global yellowComplete

	.global lab6colorboard
	.global lab6symbolboard
	.global savecursor
	.global restorecursor
	.global hidecursor
	.global showcursor
	.global lab6cursorposition_Board
	.global lab6cursorposition_Center
	.global lab6cursorposition_Time
	.global lab6cursorposition_Complete
	.global blueO
	.global redO
	.global greenO
	.global cyanO
	.global whiteO
	.global magentaO
	.global yellowO

	.global blueH
	.global redH
	.global greenH
	.global cyanH
	.global whiteH
	.global magentaH
	.global yellowH

	.global blueV
	.global redV
	.global greenV
	.global cyanV
	.global whiteV
	.global magentaV
	.global yellowV

	.global blueP
	.global redP
	.global greenP
	.global cyanP
	.global whiteP
	.global magentaP
	.global yellowP

	.global blackX
	.global	up
	.global down
	.global forward
	.global backward

	.global currently_paused
	.global currently_drawing
	.global previously_drawing
	.global current_color
	.global current_symbol
	.global lab6position
	.global lab6startOposition


startscreen:			.string 0x1B, "[30mPress n to start the game", 0x0
pausedscreen:			.string "Game paused!", 0xA, 0xD
						.string "Press SW1 to resume game", 0xA, 0xD
						.string "Press n to start a new game", 0xA, 0xD
						.string "Press r to restart current game", 0x0
gameComplete:			.string "Game Complete!", 0xA, 0xD
						.string "Press n to start a new game", 0xA, 0xD
						.string "Press r to restart current game", 0x0
gameComplete_time:		.string "Finish time: ", 0x0
; 0 = not the complete screen, 1 = complete screen
gameCompleteScreen:		.string "0", 0x0
gameBoardVersion:		.string "placeholder", 0x0
lines_completeprompt:	.string "Complete:  ", 0x0
lines_complete:			.string "0/7", 0x0
timeprompt:				.string "Time:  ", 0x0
time:					.string "0000", 0x0

; 0 = not complete, 1 = complete
blueComplete:		.string "0", 0x0
redComplete:		.string "0", 0x0
greenComplete:		.string "0", 0x0
cyanComplete:		.string "0", 0x0
whiteComplete:		.string "0", 0x0
magentaComplete:	.string "0", 0x0
yellowComplete:		.string "0", 0x0

;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
blueO:		.string	27, "[34mO", 0x0
redO:		.string	0x1B, "[31mO", 0x0
greenO:		.string	0x1B, "[32mO", 0x0
cyanO:		.string	0x1B, "[36mO", 0x0
whiteO:		.string	0x1B, "[37mO", 0x0
magentaO:	.string	0x1B, "[35mO", 0x0
yellowO:	.string	0x1B, "[33mO", 0x0

blueH:		.string	27, "[34m-", 0x0
redH:		.string	0x1B, "[31m-", 0x0
greenH:		.string	0x1B, "[32m-", 0x0
cyanH:		.string	0x1B, "[36m-", 0x0
whiteH:		.string	0x1B, "[37m-", 0x0
magentaH:	.string	0x1B, "[35m-", 0x0
yellowH:	.string	0x1B, "[33m-", 0x0

blueV:		.string	27, "[34m|", 0x0
redV:		.string	0x1B, "[31m|", 0x0
greenV:		.string	0x1B, "[32m|", 0x0
cyanV:		.string	0x1B, "[36m|", 0x0
whiteV:		.string	0x1B, "[37m|", 0x0
magentaV:	.string	0x1B, "[35m|", 0x0
yellowV:	.string	0x1B, "[33m|", 0x0

blueP:		.string	27, "[34m+", 0x0
redP:		.string	0x1B, "[31m+", 0x0
greenP:		.string	0x1B, "[32m+", 0x0
cyanP:		.string	0x1B, "[36m+", 0x0
whiteP:		.string	0x1B, "[37m+", 0x0
magentaP:	.string	0x1B, "[35m+", 0x0
yellowP:	.string	0x1B, "[33m+", 0x0

blackX:		.string 0x1B, "[30mX", 0x0
up:			.string	0x1B, "[1A", 0x0
down:		.string	0x1B, "[1B", 0x0
forward:	.string	0x1B, "[1C", 0x0
backward:	.string	0x1B, "[1D", 0x0

; 1 = not currently paused, 2 = currently paused
currently_paused:	.string "2", 0x0
; 1 = not currently drawing, 2 = currently drawing
currently_drawing:	.string "1", 0x0
previously_drawing:	.string "1", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
current_color:		.string "1", 0x0
; 1 = -, 2 = |, 3 = +, 4 = O
current_symbol:		.string "1", 0x0
lab6position:		.string "placeholder", 0x0
lab6startOposition:	.string "placeholder", 0x0


savecursor:					.string 0x1B, "[s", 0x0
restorecursor:				.string 0x1B, "[u", 0x0
hidecursor:					.string 0x1B, "[?25l", 0x0
showcursor:					.string 0x1B, "[?25h", 0x0
lab6cursorposition_Board:	.string 0x1B, "[3;1H", 0x0
lab6cursorposition_Center:	.string 0x1B, "[7;5H", 0x0
lab6cursorposition_Time:	.string 0x1B, "[2;0H", 0x0
lab6cursorposition_Complete:	.string 0x1B, "[1;0H", 0x0

;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6colorboard:	.string "XXXXXXXXX", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "XXXXXXXXX", 0x0
;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
lab6symbolboard:.string "XXXXXXXXX", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "X       X", 0xA, 0xD
				.string "XXXXXXXXX", 0x0



	.text
	.global lab6
	.global UART0_Handler
	.global Switch_Handler
	.global Timer_Handler
	.global output_board
	.global uart_init
	.global timer_init
	.global gpio_init
	.global interrupt_init
	.global simple_read_character
	.global output_string
	.global output_character
	.global choose_board
	.global board_color_copy
	.global board_symbol_copy
	.global num_digits
	.global str2int
	.global int2str
	.global ascii_to_int
	.global int_to_ascii
	.global remove_all_colored_symbols
	.global illuminate_RGB_LED

ptr_to_startscreen:				.word startscreen
ptr_to_pausedscreen:			.word pausedscreen
ptr_to_gameComplete:			.word gameComplete
ptr_to_gameComplete_time:		.word gameComplete_time
ptr_to_gameBoardVersion:		.word gameBoardVersion
ptr_to_gameCompleteScreen:		.word gameCompleteScreen
ptr_to_lines_completeprompt:	.word lines_completeprompt
ptr_to_lines_complete:			.word lines_complete
ptr_to_timeprompt:				.word timeprompt
ptr_to_time:					.word time

ptr_to_blueComplete:		.word blueComplete
ptr_to_redComplete:			.word redComplete
ptr_to_greenComplete:		.word greenComplete
ptr_to_cyanComplete:		.word cyanComplete
ptr_to_whiteComplete:		.word whiteComplete
ptr_to_magentaComplete:		.word magentaComplete
ptr_to_yellowComplete:		.word yellowComplete

ptr_to_lab6colorboard:	.word	lab6colorboard
ptr_to_lab6symbolboard:	.word	lab6symbolboard


ptr_to_savecursor:					.word	savecursor
ptr_to_restorecursor:				.word	restorecursor
ptr_to_hidecursor:					.word	hidecursor
ptr_to_showcursor:					.word	showcursor
ptr_to_lab6cursorposition_Board:	.word	lab6cursorposition_Board
ptr_to_lab6cursorposition_Center:	.word	lab6cursorposition_Center
ptr_to_lab6cursorposition_Time:		.word	lab6cursorposition_Time
ptr_to_lab6cursorposition_Complete:	.word	lab6cursorposition_Complete

ptr_to_blueO:		.word	blueO
ptr_to_redO:		.word	redO
ptr_to_greenO:		.word	greenO
ptr_to_cyanO:		.word	cyanO
ptr_to_whiteO:		.word	whiteO
ptr_to_magentaO:	.word	magentaO
ptr_to_yellowO:		.word	yellowO

ptr_to_blueH:		.word	blueH
ptr_to_redH:		.word	redH
ptr_to_greenH:		.word	greenH
ptr_to_cyanH:		.word	cyanH
ptr_to_whiteH:		.word	whiteH
ptr_to_magentaH:	.word	magentaH
ptr_to_yellowH:		.word	yellowH

ptr_to_blueV:		.word	blueV
ptr_to_redV:		.word	redV
ptr_to_greenV:		.word	greenV
ptr_to_cyanV:		.word	cyanV
ptr_to_whiteV:		.word	whiteV
ptr_to_magentaV:	.word	magentaV
ptr_to_yellowV:		.word	yellowV

ptr_to_blueP:		.word	blueP
ptr_to_redP:		.word	redP
ptr_to_greenP:		.word	greenP
ptr_to_cyanP:		.word	cyanP
ptr_to_whiteP:		.word	whiteP
ptr_to_magentaP:	.word	magentaP
ptr_to_yellowP:		.word	yellowP

ptr_to_blackX:		.word	blackX
ptr_to_up:			.word	up
ptr_to_down:		.word	down
ptr_to_forward:		.word	forward
ptr_to_backward:	.word	backward

ptr_to_currently_paused:	.word currently_paused
ptr_to_currently_drawing:	.word currently_drawing
ptr_to_previously_drawing:	.word previously_drawing
ptr_to_current_color:		.word current_color
ptr_to_current_symbol:		.word current_symbol
ptr_to_lab6position:		.word lab6position
ptr_to_lab6startOposition:	.word lab6startOposition

lab6:
	STMFD sp!, {r0-r12, lr}	; Store register r0-r12,lr on stack

	BL timer_init
	BL uart_init
	BL gpio_init

	MOV r0, #0xC				; clears screen
	BL output_character

	LDR r0, ptr_to_startscreen
	BL output_string				; output start screen prompt

	BL interrupt_init			; enable interrupts


infinite_loop:
	B infinite_loop

	LDMFD sp!, {r0-r12, lr} ; Load register r0-r12,lr from stack
	MOV pc, lr



output_board: ; r0 = color board address, r1 = symbol board address, outputs the board using ANSI (by using the info from the color board and symbol board)
	STMFD SP!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	MOV r4, r0					; initialize color board address to r4 to prevent overwriting from subroutines
	MOV r5, r1					; initialize symbol board address to r5 to prevent overwriting from subroutines
	MOV r6, #0x0				; load counter offset of current position
String_iterator:
	LDRB r0, [r4, r6]			; loads a byte from the color board string
	MOV r7, r0
	LDRB r1, [r5, r6]			; loads a byte from the symbol board string

	BL colored_symbol			; outputs the correct colored symbol (using ANSI)
	ADD r6, r6, #0x1			; update offset position counter
	CMP r7, #0x0
	BNE String_iterator

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



Switch_Handler:
	STMFD SP!,{r0-r12,lr} ; Store register lr on stack

	MOV r0, #0x5000			; initialize GPIO Port F base address
	MOVT r0, #0x4002
	LDRB r1, [r0, #0x41C]	; access GPIO Interrupt Clear register (GPIOICR)
	ORR r1, r1, #0x10		; set pin 4 to '1' (clears interrupt)
	STRB r1, [r0, #0x41C]

	; checks if the current screen is the game Complete screen
	LDR r0, ptr_to_gameCompleteScreen
	LDRB r1, [r0]
	CMP r1, #0x30
	BNE END_SWITCH_Handler				; dont do anything if the screen is the gameComplete screen

	; switches the currently_paused variable between '1' and '2'
	LDR r0, ptr_to_currently_paused
	LDRB r1, [r0]
	CMP r1, #0x31						; see if its currently not paused
	BNE switch_unpause
	MOV r1, #0x32						; if not paused, then pause
	STRB r1, [r0]

	LDR r0, ptr_to_currently_drawing
	LDR r2, ptr_to_previously_drawing
	LDRB r1, [r0]
	STRB r1, [r2]						; store drawing/not drawing state of game

	MOV r1, #0x31
	STRB r1, [r0]						; disable drawing

	MOV r0, #0x0
	BL illuminate_RGB_LED				; turn off LED

	LDR r0, ptr_to_hidecursor
	BL output_string					; hide cursor
	LDR r0, ptr_to_savecursor
	BL output_string					; save cursor position

	MOV r0, #0xC						; clears screen
	BL output_character
	LDR r0, ptr_to_pausedscreen
	BL output_string					; output paused screen prompt
	B END_SWITCH_Handler

switch_unpause:
	MOV r1, #0x31
	STRB r1, [r0]						; if paused, then unpause

	LDR r0, ptr_to_currently_drawing
	LDR r2, ptr_to_previously_drawing
	LDRB r1, [r2]
	STRB r1, [r0]						; restore drawing/not drawing state of game
	CMP r1, #0x32
	BNE switch_not_drawing				; if restored state was not drawing, dont light up led

	LDR r1, ptr_to_current_color
	LDRB r0, [r1]
	BL ascii_to_int
	BL illuminate_RGB_LED				; light up LED with currentcolor

switch_not_drawing:
	MOV r0, #0xC						; clears screen
	BL output_character

	LDR r0, ptr_to_lines_completeprompt	; prints lines complete prompt to PuTTy
	BL output_string
	LDR r0, ptr_to_lines_complete		; prints lines complete to PuTTy
	BL output_string
	MOV r0, #0xA						; newline
	BL output_character
	MOV r0, #0xD						; carriage return (moves cursor all the way to the left)
	BL output_character

	LDR r0, ptr_to_timeprompt			; prints time prompt to PuTTy
	BL output_string
	LDR r0, ptr_to_time					; prints time to PuTTy
	BL output_string
	MOV r0, #0xA						; newline
	BL output_character
	MOV r0, #0xD						; carriage return (moves cursor all the way to the left)
	BL output_character

	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy

	LDR r0, ptr_to_restorecursor
	BL output_string					; restore cursor position
	LDR r0, ptr_to_showcursor
	BL output_string					; show cursor

END_SWITCH_Handler:

	LDMFD sp!, {r0-r12,lr}
	BX lr



UART0_Handler:
	STMFD SP!,{r0-r12,lr} ; Store register lr on stack

	MOV r0, #0xC000			; initialize UART0 base address
	MOVT r0, #0x4000

	LDRB r1, [r0, #0x044]	; access UART Interrupt Clear Register (UARTICR)
	ORR r1, r1, #0x10		; set RXIC bit to 1, clears interrupt
	STRB r1, [r0, #0x044]


	LDR r0, ptr_to_currently_paused		; check if game is paused or not
	LDRB r1, [r0]
	CMP r1, #0x31
	BNE Paused

Not_paused:
	; retain movement based on currently_drawing

	LDR r0, ptr_to_currently_drawing
	LDRB r1, [r0]						; get char '1' if not currently drawing, get char '2' if currently drawing
	CMP r1, #0x31
	BNE Not_paused_drawing

Not_paused_not_drawing:					; update the cursor position, board offset position

	BL simple_read_character	; get character
	CMP r0, #0x77				; if char is 'w'
	BEQ Not_drawing_W
	CMP r0, #0x61				; if char is 'a'
	BEQ Not_drawing_A
	CMP r0, #0x73				; if char is 's'
	BEQ Not_drawing_S
	CMP r0, #0x64				; if char is 'd'
	BEQ Not_drawing_D
	CMP r0, #0x20				; if char is a space
	BEQ Not_drawing_Space
	B END_UART_unpaused

Not_drawing_W:
	LDR r0, ptr_to_lab6position
	BL str2int
	SUB r0, r0, #11					; sub 11 to get new offset for position up
	LDR r1, ptr_to_lab6symbolboard
	LDRB r2, [r1, r0]				; get symbol char at next position
	CMP r2, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset

	LDR r0, ptr_to_up				; move cursor up
	BL output_string
	B END_UART_unpaused

Not_drawing_A:

	LDR r0, ptr_to_lab6position
	BL str2int
	SUB r0, r0, #1					; sub 1 to get new offset for position left
	LDR r1, ptr_to_lab6symbolboard
	LDRB r2, [r1, r0]				; get symbol char at next position
	CMP r2, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset

	LDR r0, ptr_to_backward			; move cursor left
	BL output_string
	B END_UART_unpaused

Not_drawing_S:

	LDR r0, ptr_to_lab6position
	BL str2int
	ADD r0, r0, #11					; add 11 to get new offset for position down
	LDR r1, ptr_to_lab6symbolboard
	LDRB r2, [r1, r0]				; get symbol char at next position
	CMP r2, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset

	LDR r0, ptr_to_down				; move cursor down
	BL output_string
	B END_UART_unpaused

Not_drawing_D:

	LDR r0, ptr_to_lab6position
	BL str2int
	ADD r0, r0, #1					; add 1 to get new offset for position right
	LDR r1, ptr_to_lab6symbolboard
	LDRB r2, [r1, r0]				; get symbol char at next position
	CMP r2, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset

	LDR r0, ptr_to_forward			; move cursor right
	BL output_string
	B END_UART_unpaused

Not_drawing_Space:				; enable drawing, update memory variables
	LDR r0, ptr_to_lab6position
	BL str2int
	LDR r1, ptr_to_lab6symbolboard
	LDRB r2, [r1, r0]
	CMP r2, #0x4F
	BNE END_UART_unpaused				; if current character is not an 'O', do nothing

	LDR r4, ptr_to_lab6colorboard
	LDR r5, ptr_to_lab6symbolboard
	LDR r6, ptr_to_current_color
	LDR r7, ptr_to_current_symbol
	LDR r0, ptr_to_lab6position
	BL str2int							; r0 = current position offset
	MOV r8, r0							; r8 = save current position offset
	LDRB r1, [r4, r0]					; r1 = color char at current position offset
	LDRB r2, [r5, r0]					; r2 = symbol char at current position offset

	MOV r0, r1
	BL color_Complete
	LDRB r9, [r0]						; r9 = '0' (not completed), '1' (completed)
	CMP r9, #0x31
	BNE Not_drawing_Space_Complete		; if current color is already completed, switch to not completed, clear screen of all current colors, output ANSII

	MOV r0, r1
	BL remove_all_colored_symbols		; clears colorboard and symbolboard of all current char color symbols (excluding O's)
	LDR r0, ptr_to_hidecursor
	BL output_string							; hide cursor
	LDR r0, ptr_to_savecursor					; save ansii cursor position
	BL output_string
	LDR r0, ptr_to_lab6cursorposition_Board		; move cursor to begginning of board
	BL output_string
	LDR r0, ptr_to_lab6colorboard				; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard				; loads symbol board ptr into r1
	BL output_board								; prints board to PuTTy
	LDR r0, ptr_to_restorecursor				; restore ansii cursor position
	BL output_string
	LDR r0, ptr_to_showcursor
	BL output_string							; show cursor

Not_drawing_Space_Complete:
	MOV r0, r8
	LDRB r1, [r4, r0]					; r1 = color char at current position offset
	LDRB r2, [r5, r0]					; r2 = symbol char at current position offset
	STRB r1, [r6]						; update current_color variable
	STRB r2, [r7]						; update current_symbol variable

	MOV r0, r1
	BL color_Complete
	LDRB r1, [r0]
	CMP r1, #0x31
	BNE color_not_complete
	MOV r1, #0x30
	STRB r1, [r0]						; update that color complete with not completed
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	SUB r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed


color_not_complete:

	MOV r0, r8
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6startOposition	; update startOposition with current position
	MOV r0, r8
	BL int2str

	LDRB r0, [r6]
	BL ascii_to_int
	BL illuminate_RGB_LED				; light up led with currentcolor

	LDR r0, ptr_to_currently_drawing
	MOV r1, #0x32
	STRB r1, [r0]						; enable drawing
	B END_UART_unpaused


Not_paused_drawing:						; update cursor position, update memory position, modify memory variables

	LDR r0, ptr_to_hidecursor
	BL output_string				; hide cursor

	LDR r5, ptr_to_lab6symbolboard
	LDR r6, ptr_to_lab6colorboard
	LDR r7, ptr_to_current_symbol
	LDR r9, ptr_to_current_color

	BL simple_read_character	; get character
	CMP r0, #0x77				; if char is 'w'
	BEQ Drawing_W
	CMP r0, #0x61				; if char is 'a'
	BEQ Drawing_A
	CMP r0, #0x73				; if char is 's'
	BEQ Drawing_S
	CMP r0, #0x64				; if char is 'd'
	BEQ Drawing_D
	CMP r0, #0x20				; if char is a space
	BEQ Drawing_Space
	B END_UART_unpaused

Drawing_W:
	LDR r0, ptr_to_lab6position
	BL str2int
	SUB r0, r0, #11					; sub 11 to get new offset for position up
	LDRB r10, [r5, r0]				; r10 = symbol char at next position
	CMP r10, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	LDRB r11, [r6, r4]				; r11 = color of next char
	CMP r10, #0x4F					; else, check if next char is a 'O'
	BNE Drawing_W_line
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BNE END_UART_unpaused			; if different color, dont move or update memory
	LDR r0, ptr_to_lab6startOposition
	BL str2int
	CMP r4, r0						; check if next char is the starting point (check if current position offset is the same as lab6startOposition offset)
	BEQ END_UART_unpaused			; if next char is the starting point, dont move or update memory
									; else, update complete lines counter, disable drawing, update lab6position, update memory variables, move cursor

	MOV r0, #0x0
	BL illuminate_RGB_LED			; turn off LED
	LDRB r0, [r9]					; update <currentcolor>Complete variable
	BL color_Complete				; r0 = ptr to the <currentcolor>Complete variable
	MOV r2, #0x31
	STRB r2, [r0]					; currentcolor is completed
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	ADD r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	LDR r0, ptr_to_currently_drawing
	MOV r1, #0x31
	STRB r1, [r0]					; disable drawing
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x2D					; check if current symbol is '-'
	BNE Drawing_W_O
	ADD r0, r4, #11					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_W_O:
	STRB r10, [r7]					; update current_symbol with next char

	LDR r0, ptr_to_up				; move cursor up
	BL output_string
	B END_UART_unpaused

Drawing_W_line:						; r11 = color of next char
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BEQ END_UART_unpaused			; if same color, dont move or update memory
	CMP r11, #0x20					; if next char is a space, don't update lines complete
	BEQ Drawing_W_line_space
									; if its a different color, clear screen of all next char color symbols (excluding O's), update lab6position, update memory variables, move cursor
	MOV r0, r11
	BL color_Complete
	MOV r1, #0x30
	STRB r1, [r0]					; update the next char color with uncomplete
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	SUB r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	MOV r0, r11
	BL remove_all_colored_symbols	; clears colorboard and symbolboard of all next char color symbols (excluding O's)
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDR r0, ptr_to_lab6cursorposition_Board		; move cursor to begginning of board
	BL output_string
	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_W_line_space:
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x2D					; check if current symbol is '-'
	BNE Drawing_W_line_symbol
	ADD r0, r4, #11					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_W_line_symbol:
	LDRB r0, [r9]					; r0 = current color
	STRB r0, [r6, r4]				; update lab6colorboard with current color in new offset position
	MOV r0, #0x7C
	STRB r0, [r5, r4]				; update lab6symbolboard with '|' in new offset position

	MOV r0, #0x7C
	STRB r0, [r7]					; update current_symbol with '|'

	LDR r0, ptr_to_up				; move cursor up
	BL output_string
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x7C
	BL colored_symbol				; output ansii '|'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string
	B END_UART_unpaused

Drawing_A:

	LDR r0, ptr_to_lab6position
	BL str2int
	SUB r0, r0, #1					; sub 1 to get new offset for position up
	LDRB r10, [r5, r0]				; r10 = symbol char at next position
	CMP r10, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	LDRB r11, [r6, r4]				; r11 = color of next char
	CMP r10, #0x4F					; else, check if next char is a 'O'
	BNE Drawing_A_line
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BNE END_UART_unpaused			; if different color, dont move or update memory
	LDR r0, ptr_to_lab6startOposition
	BL str2int
	CMP r4, r0						; check if next char is the starting point (check if current position offset is the same as lab6startOposition offset)
	BEQ END_UART_unpaused			; if next char is the starting point, dont move or update memory
									; else, update complete lines counter, disable drawing, update lab6position, update memory variables, move cursor

	MOV r0, #0x0
	BL illuminate_RGB_LED			; turn off LED
	LDRB r0, [r9]					; update <currentcolor>Complete variable
	BL color_Complete				; r0 = ptr to the <currentcolor>Complete variable
	MOV r2, #0x31
	STRB r2, [r0]					; currentcolor is completed
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	ADD r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	LDR r0, ptr_to_currently_drawing
	MOV r1, #0x31
	STRB r1, [r0]					; disable drawing
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x7C					; check if current symbol is '|'
	BNE Drawing_A_O
	ADD r0, r4, #1					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_A_O:
	STRB r10, [r7]					; update current_symbol with next char

	LDR r0, ptr_to_backward			; move cursor left
	BL output_string
	B END_UART_unpaused

Drawing_A_line:						; r11 = color of next char
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BEQ END_UART_unpaused			; if same color, dont move or update memory
	CMP r11, #0x20					; if next char is a space, don't update lines complete
	BEQ Drawing_A_line_space
									; if its a different color, clear screen of all next char color symbols (excluding O's), update lab6position, update memory variables, move cursor
	MOV r0, r11
	BL color_Complete
	MOV r1, #0x30
	STRB r1, [r0]					; update the next char color with uncomplete
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	SUB r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	MOV r0, r11
	BL remove_all_colored_symbols	; clears colorboard and symbolboard of all next char color symbols (excluding O's)
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDR r0, ptr_to_lab6cursorposition_Board		; move cursor to begginning of board
	BL output_string
	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_A_line_space:
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x7C					; check if current symbol is '|'
	BNE Drawing_A_line_symbol
	ADD r0, r4, #1					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_A_line_symbol:
	LDRB r0, [r9]					; r0 = current color
	STRB r0, [r6, r4]				; update lab6colorboard with current color in new offset position
	MOV r0, #0x2D
	STRB r0, [r5, r4]				; update lab6symbolboard with '-' in new offset position

	MOV r0, #0x2D
	STRB r0, [r7]					; update current_symbol with '-'

	LDR r0, ptr_to_backward			; move cursor left
	BL output_string
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2D
	BL colored_symbol				; output ansii '-'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string
	B END_UART_unpaused

Drawing_S:

	LDR r0, ptr_to_lab6position
	BL str2int
	ADD r0, r0, #11					; add 11 to get new offset for position down
	LDRB r10, [r5, r0]				; r10 = symbol char at next position
	CMP r10, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	LDRB r11, [r6, r4]				; r11 = color of next char
	CMP r10, #0x4F					; else, check if next char is a 'O'
	BNE Drawing_S_line
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BNE END_UART_unpaused			; if different color, dont move or update memory
	LDR r0, ptr_to_lab6startOposition
	BL str2int
	CMP r4, r0						; check if next char is the starting point (check if current position offset is the same as lab6startOposition offset)
	BEQ END_UART_unpaused			; if next char is the starting point, dont move or update memory
									; else, update complete lines counter, disable drawing, update lab6position, update memory variables, move cursor

	MOV r0, #0x0
	BL illuminate_RGB_LED			; turn off LED
	LDRB r0, [r9]					; update <currentcolor>Complete variable
	BL color_Complete				; r0 = ptr to the <currentcolor>Complete variable
	MOV r2, #0x31
	STRB r2, [r0]					; currentcolor is completed
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	ADD r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	LDR r0, ptr_to_currently_drawing
	MOV r1, #0x31
	STRB r1, [r0]					; disable drawing
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x2D					; check if current symbol is '-'
	BNE Drawing_S_O
	SUB r0, r4, #11					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_S_O:
	STRB r10, [r7]					; update current_symbol with next char

	LDR r0, ptr_to_down				; move cursor down
	BL output_string
	B END_UART_unpaused

Drawing_S_line:						; r11 = color of next char
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BEQ END_UART_unpaused			; if same color, dont move or update memory
	CMP r11, #0x20					; if next char is a space, don't update lines complete
	BEQ Drawing_S_line_space
									; if its a different color, clear screen of all next char color symbols (excluding O's), update lab6position, update memory variables, move cursor
	MOV r0, r11
	BL color_Complete
	MOV r1, #0x30
	STRB r1, [r0]					; update the next char color with uncomplete
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	SUB r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	MOV r0, r11
	BL remove_all_colored_symbols	; clears colorboard and symbolboard of all next char color symbols (excluding O's)
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDR r0, ptr_to_lab6cursorposition_Board		; move cursor to begginning of board
	BL output_string
	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string
Drawing_S_line_space:
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x2D					; check if current symbol is '-'
	BNE Drawing_S_line_symbol
	SUB r0, r4, #11					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_S_line_symbol:
	LDRB r0, [r9]					; r0 = current color
	STRB r0, [r6, r4]				; update lab6colorboard with current color in new offset position
	MOV r0, #0x7C
	STRB r0, [r5, r4]				; update lab6symbolboard with '|' in new offset position

	MOV r0, #0x7C
	STRB r0, [r7]					; update current_symbol with '|'

	LDR r0, ptr_to_down				; move cursor down
	BL output_string
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x7C
	BL colored_symbol				; output ansii '|'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string
	B END_UART_unpaused

Drawing_D:

	LDR r0, ptr_to_lab6position
	BL str2int
	ADD r0, r0, #1					; add 1 to get new offset for position right
	LDRB r10, [r5, r0]				; r10 = symbol char at next position
	CMP r10, #0x58
	BEQ END_UART_unpaused			; if next char is a 'X', dont update lab6position, dont move cursor
	MOV r4, r0						; r4 = save new offset
	LDRB r11, [r6, r4]				; r11 = color of next char
	CMP r10, #0x4F					; else, check if next char is a 'O'
	BNE Drawing_D_line
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BNE END_UART_unpaused			; if different color, dont move or update memory
	LDR r0, ptr_to_lab6startOposition
	BL str2int
	CMP r4, r0						; check if next char is the starting point (check if current position offset is the same as lab6startOposition offset)
	BEQ END_UART_unpaused			; if next char is the starting point, dont move or update memory
									; else, update complete lines counter, disable drawing, update lab6position, update memory variables, move cursor

	MOV r0, #0x0
	BL illuminate_RGB_LED			; turn off LED
	LDRB r0, [r9]					; update <currentcolor>Complete variable
	BL color_Complete				; r0 = ptr to the <currentcolor>Complete variable
	MOV r2, #0x31
	STRB r2, [r0]					; currentcolor is completed
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	ADD r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	LDR r0, ptr_to_currently_drawing
	MOV r1, #0x31
	STRB r1, [r0]					; disable drawing
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x7C					; check if current symbol is '|'
	BNE Drawing_D_O
	SUB r0, r4, #1					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_D_O:
	STRB r10, [r7]					; update current_symbol with next char

	LDR r0, ptr_to_forward			; move cursor right
	BL output_string
	B END_UART_unpaused

Drawing_D_line:						; r11 = color of next char
	LDRB r1, [r9]					; r1 = color of current char
	CMP r1, r11						; check color of next char
	BEQ END_UART_unpaused			; if same color, dont move or update memory
	CMP r11, #0x20					; if next char is a space, don't update lines complete
	BEQ Drawing_D_line_space
									; if its a different color, clear screen of all next char color symbols (excluding O's), update lab6position, update memory variables, move cursor
	MOV r0, r11
	BL color_Complete
	MOV r1, #0x30
	STRB r1, [r0]					; update the next char color with uncomplete
	LDR r1, ptr_to_lines_complete
	LDRB r0, [r1]
	BL ascii_to_int
	SUB r0, r0, #0x1
	BL int_to_ascii
	STRB r0, [r1]					; store updated int in lines completed

	MOV r0, r11
	BL remove_all_colored_symbols	; clears colorboard and symbolboard of all next char color symbols (excluding O's)
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDR r0, ptr_to_lab6cursorposition_Board		; move cursor to begginning of board
	BL output_string
	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_D_line_space:
	MOV r0, r4
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str						; update lab6position with new offset
	LDRB r0, [r7]					; get current symbol
	CMP r0, #0x7C					; check if current symbol is '|'
	BNE Drawing_D_line_symbol
	SUB r0, r4, #1					; r0 = position before the update
	MOV r1, #0x2B
	STRB r1, [r5, r0]				; update position before the update on the symbolboard with '+'
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2B
	BL colored_symbol				; output ansii '+'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string

Drawing_D_line_symbol:
	LDRB r0, [r9]					; r0 = current color
	STRB r0, [r6, r4]				; update lab6colorboard with current color in new offset position
	MOV r0, #0x2D
	STRB r0, [r5, r4]				; update lab6symbolboard with '-' in new offset position

	MOV r0, #0x2D
	STRB r0, [r7]					; update current_symbol with '-'

	LDR r0, ptr_to_forward			; move cursor right
	BL output_string
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDRB r0, [r9]
	MOV r1, #0x2D
	BL colored_symbol				; output ansii '-'
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string
	B END_UART_unpaused

Drawing_Space:				; disable drawing, clear screen of currenty color symbols
	MOV r0, #0x0
	BL illuminate_RGB_LED			; turn off LED
	LDR r0, ptr_to_currently_drawing
	MOV r1, #0x31
	STRB r1, [r0]					; disable drawing

	LDR r1, ptr_to_current_color
	LDRB r0, [r1]					; get current color
	BL remove_all_colored_symbols	; clears colorboard and symbolboard of all current char color symbols (excluding O's)
	LDR r0, ptr_to_savecursor		; save ansii cursor position
	BL output_string
	LDR r0, ptr_to_lab6cursorposition_Board		; move cursor to begginning of board
	BL output_string
	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy
	LDR r0, ptr_to_restorecursor	; restore ansii cursor position
	BL output_string
	B END_UART_unpaused

END_UART_unpaused:
	LDR r0, ptr_to_lines_complete
	LDRB r1, [r0]
	CMP r1, #0x37
	BEQ game_finished								; if we have 7 completed lines, branch to game_finished

	LDR r0, ptr_to_savecursor
	BL output_string								; save cursor position
	LDR r0, ptr_to_lab6cursorposition_Complete		; print/move cursor to beginning of line_completeprompt
	BL output_string
	LDR r0, ptr_to_lines_completeprompt				; prints lines complete prompt to PuTTy
	BL output_string
	LDR r0, ptr_to_lines_complete					; prints lines complete to PuTTy
	BL output_string
	LDR r0, ptr_to_restorecursor
	BL output_string								; restore cursor position
	LDR r0, ptr_to_showcursor
	BL output_string							; show cursor
	B END_UART_Handler

game_finished:
	MOV r0, #0xC				; clears screen
	BL output_character

	LDR r0, ptr_to_currently_paused
	MOV r1, #0x32
	STRB r1, [r0]					; pause game

	LDR r0, ptr_to_gameComplete
	BL output_string				; output gameComplete screen prompt

	LDR r0, ptr_to_gameCompleteScreen
	MOV r1, #0x31
	STRB r1, [r0]					; switch gameCompleteScreen to "1"

	MOV r0, #0xA
	BL output_character				; newline
	MOV r0, #0xD
	BL output_character				; carriage return

	LDR r0, ptr_to_gameComplete_time
	BL output_string				; print finished time prompt

	LDR r0, ptr_to_time
	BL output_string				; print finished time

	B END_UART_Handler


Paused:
	BL simple_read_character	; get character
	CMP r0, #0x6E				; if char is 'n'
	BEQ new_game
	CMP r0, #0x72				; if char is 'r'
	BEQ restart_game
	B END_UART_Handler

new_game:
	LDR r0, ptr_to_currently_paused
	MOV r1, #0x31
	STRB r1, [r0]				; unpause game

								; use timer to get a pseudo random board number
	MOV r1, #0x0050				; Timer0 base address
	MOVT r1, #0x4003
	LDRB r0, [r1]				; get first byte

	MOV r2, #16
	UDIV r1, r0, r2				; r1 = divide byte with 16
	MUL r1, r1, r2				; r1 = multiply quotient by 16
	SUB r0, r0, r1				; r0 = byte modulo 16
	ADD r0, r0, #1				; add 1 (we numbered the boards starting from 1 - 16 so we need to account for a zero result)

	MOV r4, r0					; save result
	BL num_digits
	MOV r2, r0
	LDR r1, ptr_to_gameBoardVersion
	MOV r0, r4
	BL int2str

restart_game:
	LDR r0, ptr_to_time						; clear time
	MOV r1, #0x30
	STRB r1, [r0], #1
	STRB r1, [r0], #1
	STRB r1, [r0], #1
	STRB r1, [r0]

	LDR r0, ptr_to_gameCompleteScreen
	MOV r1, #0x30
	STRB r1, [r0]							; clear gameCompleteScreen

	LDR r0, ptr_to_blueComplete				; clear lines complete variables
	STRB r1, [r0]
	LDR r0, ptr_to_redComplete
	STRB r1, [r0]
	LDR r0, ptr_to_greenComplete
	STRB r1, [r0]
	LDR r0, ptr_to_cyanComplete
	STRB r1, [r0]
	LDR r0, ptr_to_whiteComplete
	STRB r1, [r0]
	LDR r0, ptr_to_magentaComplete
	STRB r1, [r0]
	LDR r0, ptr_to_yellowComplete
	STRB r1, [r0]

	LDR r0, ptr_to_lines_complete			; clear lines complete
	MOV r1, #0x30
	STRB r1, [r0]

	MOV r0, #48				; initialize the memory position placeholder to 48, the center index
	MOV r4, r0
	BL num_digits
	MOV r2, r0				; initialize variables for int2str to store in memory
	LDR r1, ptr_to_lab6position
	MOV r0, r4
	BL int2str				; store "48" into lab6position
	LDR r0, ptr_to_currently_paused
	MOV r1, #0x31
	STRB r1, [r0]				; unpause game

	MOV r0, #0xC				; clears screen before initializing new board
	BL output_character

	LDR r0, ptr_to_gameBoardVersion
	BL str2int							; r0 = board verion int
	BL choose_board						; initialize the board into colorboard and symbolboard

	LDR r0, ptr_to_lab6symbolboard
	LDRB r1, [r0, #48]				; get char at center of board
	LDR r0, ptr_to_current_symbol
	STRB r1, [r0]					; store char into current symbol


	LDR r0, ptr_to_lines_completeprompt	; prints lines complete prompt to PuTTy
	BL output_string
	LDR r0, ptr_to_lines_complete		; prints lines complete to PuTTy
	BL output_string
	MOV r0, #0xA						; newline
	BL output_character
	MOV r0, #0xD						; carriage return (moves cursor all the way to the left)
	BL output_character

	LDR r0, ptr_to_timeprompt			; prints time prompt to PuTTy
	BL output_string
	LDR r0, ptr_to_time					; prints time to PuTTy
	BL output_string
	MOV r0, #0xA						; newline
	BL output_character
	MOV r0, #0xD						; carriage return (moves cursor all the way to the left)
	BL output_character

	LDR r0, ptr_to_lab6colorboard	; loads color board ptr into r0
	LDR r1, ptr_to_lab6symbolboard	; loads symbol board ptr into r1
	BL output_board					; prints board to PuTTy


	LDR r0, ptr_to_lab6cursorposition_Center	; print cursor to center of board
	BL output_string
	LDR r0, ptr_to_showcursor
	BL output_string				; show cursor



END_UART_Handler:


	LDMFD sp!, {r0-r12,lr}
	BX lr

Timer_Handler:
	STMFD SP!,{r0-r12,lr} ; Preserve registers on the stack

	MOV r0, #0x0000			; Timer0 base address
	MOVT r0, #0x4003
	LDRB r1, [r0, #0x024]	; access GPTMICR (GPTM Interrupt Clear Register)
	ORR r1, r1, #0x1		; write '1' to TATOCINT
	STRB r1, [r0, #0x024]

									; check if game is paused or not
	LDR r0, ptr_to_currently_paused
	LDRB r1, [r0]					; load currently paused variable into r1
	CMP r1, #0x31
	BNE End_timer_handler			; dont update time if game is paused

	LDR r1, ptr_to_time			; get string time base address in r1
	LDRB r0, [r1, #0x0]
	BL ascii_to_int				; convert ascii char to int
	MOV r4, r0					; store 1000's place to r4
	LDR r1, ptr_to_time			; get string time base address + 1 in r0
	LDRB r0, [r1, #0x1]
	BL ascii_to_int				; convert ascii char to int
	MOV r5, r0					; store 100's place to r5
	LDR r1, ptr_to_time			; get string time base address + 2 in r0
	LDRB r0, [r1, #0x2]
	BL ascii_to_int				; convert ascii char to int
	MOV r6, r0					; store 10's place to r6
	LDR r1, ptr_to_time			; get string time base address + 3 in r0
	LDRB r0, [r1, #0x3]
	BL ascii_to_int				; convert ascii char to int
	MOV r7, r0					; store 1's palce to r7

	MOV r0, r7			; add 1's place to r0
	MOV r1, #10
	MUL r6, r6, r1
	ADD r0, r0, r6		; add 10's place to r0
	MOV r1, #100
	MUL r5, r5, r1
	ADD r0, r0, r5		; add 100's place to r0
	MOV r1, #1000
	MUL r4, r4, r1
	ADD r0, r0, r4		; add 1000's place to r0


	ADD r0, r0, #0x1		; add 1 sec
	MOV r3, r0				; store int in r3 for int2str
	BL num_digits
	CMP r0, #0x1			; if int has 1 digit, add 3 zeroes before it in the string
	BEQ One_digit
	CMP r0, #0x2			; if int has 2 digits, add 2 zeroes before it in the string
	BEQ Two_digit
	CMP r0, #0x3			; if int has 3 digits, add 1 zero before it in the string
	BEQ Three_digit
	CMP r0, #0x4			; if int has 4 digits, add 0 zeroes before it in the string
	BEQ Four_digit
	B End_time

One_digit:
	MOV r2, r0				; initialize for int2str
	MOV r0, r3
	LDR r1, ptr_to_time
	ADD r1, r1, #0x3		; offset 3 digits
	BL int2str				; store updated time
	B End_time
Two_digit:
	MOV r2, r0				; initialize for int2str
	MOV r0, r3
	LDR r1, ptr_to_time
	ADD r1, r1, #0x2		; offset 2 digits
	BL int2str				; store updated time
	B End_time
Three_digit:
	MOV r2, r0				; initialize for int2str
	MOV r0, r3
	LDR r1, ptr_to_time
	ADD r1, r1, #0x1		; offset 1 digit
	BL int2str				; store updated time
	B End_time
Four_digit:
	MOV r2, r0				; initialize for int2str
	MOV r0, r3
	LDR r1, ptr_to_time
	BL int2str				; store updated time
	B End_time

End_time:

	LDR r0, ptr_to_hidecursor
	BL output_string				; hide cursor

	LDR r0, ptr_to_savecursor
	BL output_string				; save cursor

	LDR r0, ptr_to_lab6cursorposition_Time		; print/move cursor to beginning of timeprompt
	BL output_string

	LDR r0, ptr_to_timeprompt					; prints time prompt to PuTTy
	BL output_string
	LDR r0, ptr_to_time							; prints time to PuTTy
	BL output_string


	LDR r0, ptr_to_restorecursor			; move cursor back to previous board position
	BL output_string

	LDR r0, ptr_to_showcursor
	BL output_string				; show cursor


End_timer_handler:

	LDMFD sp!, {r0-r12,lr}
	BX lr





colored_symbol:				; r0 = color char int (ASCII), r1 = symbol char (ASCII), outputs the correct colored symbol to PuTTy using ANSII
	STMFD sp!,{lr, r4-r11}	; Store register lr, r4-r11 on stack

	CMP r1, #0x58			; is symbol char a 'X'
	BEQ X
	CMP r1, #0x4F			; is symbol char a 'O'
	BEQ O
	CMP r1, #0x7C			; is symbol char a '|'
	BEQ Vert
	CMP r1, #0x2D			; is symbol char a '-'
	BEQ Horiz
	CMP r1, #0x2B			; is symbol char a '+'
	BEQ Plus
	CMP r1, #0x0			; check if char is not NULL
	BNE Output_char			; simply output char if its a space or anything else
	B End_colored_symbol

X:
	LDR r0, ptr_to_blackX
	BL output_string
	B End_colored_symbol

O:
	CMP r0, #0x31			; blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
	BEQ BlueO
	CMP r0, #0x32
	BEQ	RedO
	CMP r0, #0x33
	BEQ GreenO
	CMP r0, #0x34
	BEQ CyanO
	CMP r0, #0x35
	BEQ WhiteO
	CMP r0, #0x36
	BEQ MagentaO
	CMP r0, #0x37
	BEQ YellowO
BlueO:
	LDR r0, ptr_to_blueO
	BL output_string
	B End_colored_symbol
RedO:
	LDR r0, ptr_to_redO
	BL output_string
	B End_colored_symbol
GreenO:
	LDR r0, ptr_to_greenO
	BL output_string
	B End_colored_symbol
CyanO:
	LDR r0, ptr_to_cyanO
	BL output_string
	B End_colored_symbol
WhiteO:
	LDR r0, ptr_to_whiteO
	BL output_string
	B End_colored_symbol
MagentaO:
	LDR r0, ptr_to_magentaO
	BL output_string
	B End_colored_symbol
YellowO:
	LDR r0, ptr_to_yellowO
	BL output_string
	B End_colored_symbol

Vert:
	CMP r0, #0x31				; blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
	BEQ BlueV
	CMP r0, #0x32
	BEQ	RedV
	CMP r0, #0x33
	BEQ GreenV
	CMP r0, #0x34
	BEQ CyanV
	CMP r0, #0x35
	BEQ WhiteV
	CMP r0, #0x36
	BEQ MagentaV
	CMP r0, #0x37
	BEQ YellowV
BlueV:
	LDR r0, ptr_to_blueV
	BL output_string
	B End_colored_symbol
RedV:
	LDR r0, ptr_to_redV
	BL output_string
	B End_colored_symbol
GreenV:
	LDR r0, ptr_to_greenV
	BL output_string
	B End_colored_symbol
CyanV:
	LDR r0, ptr_to_cyanV
	BL output_string
	B End_colored_symbol
WhiteV:
	LDR r0, ptr_to_whiteV
	BL output_string
	B End_colored_symbol
MagentaV:
	LDR r0, ptr_to_magentaV
	BL output_string
	B End_colored_symbol
YellowV:
	LDR r0, ptr_to_yellowV
	BL output_string
	B End_colored_symbol

Horiz:
	CMP r0, #0x31				; blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
	BEQ BlueH
	CMP r0, #0x32
	BEQ	RedH
	CMP r0, #0x33
	BEQ GreenH
	CMP r0, #0x34
	BEQ CyanH
	CMP r0, #0x35
	BEQ WhiteH
	CMP r0, #0x36
	BEQ MagentaH
	CMP r0, #0x37
	BEQ YellowH
BlueH:
	LDR r0, ptr_to_blueH
	BL output_string
	B End_colored_symbol
RedH:
	LDR r0, ptr_to_redH
	BL output_string
	B End_colored_symbol
GreenH:
	LDR r0, ptr_to_greenH
	BL output_string
	B End_colored_symbol
CyanH:
	LDR r0, ptr_to_cyanH
	BL output_string
	B End_colored_symbol
WhiteH:
	LDR r0, ptr_to_whiteH
	BL output_string
	B End_colored_symbol
MagentaH:
	LDR r0, ptr_to_magentaH
	BL output_string
	B End_colored_symbol
YellowH:
	LDR r0, ptr_to_yellowH
	BL output_string
	B End_colored_symbol

Plus:
	CMP r0, #0x31				; blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
	BEQ BlueP
	CMP r0, #0x32
	BEQ	RedP
	CMP r0, #0x33
	BEQ GreenP
	CMP r0, #0x34
	BEQ CyanP
	CMP r0, #0x35
	BEQ WhiteP
	CMP r0, #0x36
	BEQ MagentaP
	CMP r0, #0x37
	BEQ YellowP
BlueP:
	LDR r0, ptr_to_blueP
	BL output_string
	B End_colored_symbol
RedP:
	LDR r0, ptr_to_redP
	BL output_string
	B End_colored_symbol
GreenP:
	LDR r0, ptr_to_greenP
	BL output_string
	B End_colored_symbol
CyanP:
	LDR r0, ptr_to_cyanP
	BL output_string
	B End_colored_symbol
WhiteP:
	LDR r0, ptr_to_whiteP
	BL output_string
	B End_colored_symbol
MagentaP:
	LDR r0, ptr_to_magentaP
	BL output_string
	B End_colored_symbol
YellowP:
	LDR r0, ptr_to_yellowP
	BL output_string
	B End_colored_symbol

Output_char:
	MOV r0, r1				; intitialize for output_character
	BL output_character

End_colored_symbol:

	LDMFD sp!, {lr, r4-r11} 	; Restore lr, r4-r11 from stack
	mov pc, lr



remove_all_colored_symbols:				; r0 = color char int (ASCII)    clears the colorboard and symbolboard of all symbols of a specific color (excluding the 'O's)
	STMFD sp!,{lr, r1-r11}	; Store register lr, r1-r11 on stack

	LDR r1, ptr_to_lab6colorboard
	LDR r2, ptr_to_lab6symbolboard

	MOV r4, #0x0			; position offset
Remove_loop:
	LDRB r5, [r1, r4]		; get color char from colorboard
	LDRB r6, [r2, r4]		; get symbol char from symbolboard
	CMP r5, #0x0
	BEQ Remove_end			; if char is Null, end
	ADD r4, r4, #0x1		; update offset
	CMP r6, #0x4F
	BEQ Remove_loop			; if symbol char is 'O', loop without doing anything
	CMP r5, r0
	BNE Remove_loop			; if color is different, loop without doing anything
							; if color is same...
	MOV r7, #0x20			; initialize space char
	SUB r4, r4, #0x1		; subtract 1 from already updated offset
	STRB r7, [r1, r4]		; replace char with space in colorboard
	STRB r7, [r2, r4]		; replace char with space in symbolboard
	ADD r4, r4, #0x1		; restore updated offset
	B Remove_loop

Remove_end:

	LDMFD sp!, {lr, r1-r11} 	; Restore lr, r1-r11 from stack
	mov pc, lr



color_Complete:				; r0 = color char, returns the ptr to the appropriate <color>Complete variable in r0
	STMFD sp!,{lr, r1-r11}	; Store register lr, r1-r11 on stack

	;blue=1, red=2, green=3, cyan=4, white=5, magenta=6, yellow=7
	CMP r0, #0x31
	BEQ blue_Complete
	CMP r0, #0x32
	BEQ red_Complete
	CMP r0, #0x33
	BEQ green_Complete
	CMP r0, #0x34
	BEQ cyan_Complete
	CMP r0, #0x35
	BEQ white_Complete
	CMP r0, #0x36
	BEQ magenta_Complete
	CMP r0, #0x37
	BEQ yellow_Complete

blue_Complete:
	LDR r0, ptr_to_blueComplete
	B END_color_Complete
red_Complete:
	LDR r0, ptr_to_redComplete
	B END_color_Complete
green_Complete:
	LDR r0, ptr_to_greenComplete
	B END_color_Complete
cyan_Complete:
	LDR r0, ptr_to_cyanComplete
	B END_color_Complete
white_Complete:
	LDR r0, ptr_to_whiteComplete
	B END_color_Complete
magenta_Complete:
	LDR r0, ptr_to_magentaComplete
	B END_color_Complete
yellow_Complete:
	LDR r0, ptr_to_yellowComplete

END_color_Complete:

	LDMFD sp!, {lr, r1-r11} 	; Restore lr, r1-r11 from stack
	mov pc, lr

	.end


