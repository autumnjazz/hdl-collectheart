/////////////////////////// �簢�� �ʱ�ȭ
   @color		/// ���� ����
   M=-1
   @19983	///������(16,8)
   D=A
   @address	
   M=D
/////////////////////////// ȭ�� �ʱ�ȭ
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
@1
D=A
@0
A=M
M=D
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
@1
D=-A
@0
A=M
M=D
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
/////////////////////////// �簢�� �׸��� ����
(REC)
   @address
    D=M
   @previous
   M=D
   @15
   D=A 
   @counter
   M=D
(FILL)
   @color
   D=M
   @address
   A=M
   M=D
   @address
   D=M
   @32
   D=D+A
   @address
   M=D
   @counter
   MD=M-1
   @FILL
   D;JGT
@key
D=M
@NEW
D;JNE
/////////////////////////// �簢�� �׸��� ��
/////////////////////////// Ű���� üũ ���� 
(KBDCHECK)
   @KBD
   D=M
   @key
   M=D
   @KBDCHECK
   D;JEQ

(NEW)	///���� �簢�� �׸���
@color
M=-1
@key
D=M
@131
D=D-A
@LEFT
D;JLT
@UP
D;JEQ
@1
D=D-A
@RIGHT
D;JEQ
@DOWN
D;JGT

(LEFT)	///����
@previous
D=M
@address
M=D-1
@key
M=0
@RESTART
0;JMP

(UP)	///��
@previous
D=M
@512
D=D-A
@address
M=D
@key
M=0
@RESTART
0;JMP

(RIGHT)	///������
@previous
D=M
@address
M=D+1
@key
M=0
@RESTART
0;JMP

(DOWN)	///�Ʒ�
@previous
D=M
@512
D=D+A
@address
M=D
@key
M=0
@RESTART
0;JMP


