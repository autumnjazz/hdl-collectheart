(RESTART)
@SCREEN
D=A
@0
M=D	
///////////////////////////�׸��� �׸��� ����
(GRID)
@i
M=1
@j
M=1

(VERTICAL)	///������ �׸���
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

(HORIZONTAL)	///���� �׸���
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

(GRIDBOUNDCHK)	///�׸��� ���� üũ
@0
D=M
@KBD
D=A-D
@GRID
D;JGT
/////////////////////////// �׸��� �׸��� ��

@RESTART
0;JMP

