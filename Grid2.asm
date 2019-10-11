(RESTART)
@SCREEN
D=A
@0
M=D	
///////////////////////////그리드 그리기 시작
(GRID)
@i
M=1
@j
M=1

(VERTICAL)	///수직선 그리기
@i
D=M
@480
D=D-A
@HORIZONTAL
D;JGT
@0
A=M
D=M
@VCOUNT
D;JNE
@1
D=A
@0
A=M
M=D
(VCOUNT)
@0
M=M+1
@i
M=M+1
@VERTICAL
0;JMP

(HORIZONTAL)	///수평선 그리기
@j
D=M
@32
D=D-A
@GRIDBOUNDCHK
D;JGT
@0
A=M
D=M
@HCOUNT
D;JNE
@1
D=-A
@0
A=M
M=D
(HCOUNT)
@0
M=M+1
@j
M=M+1
@HORIZONTAL
0;JMP

(GRIDBOUNDCHK)	///그리드 범위 체크
@0
D=M
@KBD
D=A-D
@GRID
D;JGT
/////////////////////////// 그리드 그리기 끝

@RESTART
0;JMP

