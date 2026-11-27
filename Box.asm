// Box.asm for Roll No: 2501730502 (K = 2)
// Start Row: 2 (16384 + 32*2 = 16448), Height: 20 rows, Width: 48 pixels (3 words)
(LOOP)
    @KBD
    D=M
    @SET_WHITE
    D;JEQ

    @color
    M=-1
    @START_DRAW
    0;JMP

(SET_WHITE)
    @color
    M=0

(START_DRAW)
    @16448
    D=A
    @addr
    M=D

    @20
    D=A
    @rows
    M=D

(ROW_LOOP)
    @rows
    D=M
    @LOOP
    D;JEQ

    @color
    D=M
    @addr
    A=M
    M=D

    @color
    D=M
    @addr
    A=M+1
    M=D

    @color
    D=M
    @addr
    A=M+2
    M=D

    @32
    D=A
    @addr
    M=M+D

    @rows
    M=M-1

    @ROW_LOOP
    0;JMP
