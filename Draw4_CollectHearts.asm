// sensitive key problem �ذ� (�����س��� �ӵ��� ���� ���� �ӵ��� �޶�����)
// boundary problem �ذ�
// ��Ʈ �Ա� ��� �߰�

/////////////////////////// �簢�� �ʱ�ȭ
   @color		/// ���� ����
   M=-1
   @19983	///������(16,8)
   D=A
   @address	
   M=D
@ 15 
D = A
@lc
M = D
@ 16
D = A
@rc
M = D
@ 7 
D = A
@uc
M = D
@ 8 
D = A
@dc
M = D

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
@GRIDBOUNDARY
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

(GRIDBOUNDARY)	///�׸��� ���� üũ
@0
D=M
@KBD
D=A-D
@GRID
D;JGT
/////////////////////////// �׸��� �׸��� ��
/////////////////////////// ��Ʈ ����� ����


/////////////////////////// ��Ʈ ����� ��
/////////////////////////// ��Ʈ �׸��� ���� (3��)
///��Ʈ �ʱ�ȭ
   @2
   D = A
   @k
   M = D
(HINIT)
   @19476
   D=A
   @haddress
   M=D
   @k
   D=M-1
   @SET
   D;JGT

   @16415
   D=A
   @haddress
   M=D
   @k
   D = M-1
   @SET
   D;JEQ

   @22028
   D=A
   @haddress
   M=D
   @k
   D = M
   @SET
   D;JEQ

(SET)
   @13
   D=A 
   @counter
   M=D
(HLOOP)
@14393
D=A
@hvalue
M=D
@13
D=A
@counter
D=M - D
@HEART
D;JEQ

@31869
D=A
@hvalue
M=D
@12
D=A
@counter
D=M - D
@HEART
D;JEQ

@897
D=-A
@hvalue
M=D
@11
D=A
@counter
D=M - D
@HEART
D;JEQ

@257
D=-A
@hvalue
M=D
@10
D=A
@counter
D=M - D
@HEART
D;JEQ

@1
D=-A
@hvalue
M=D
@7
D=A
@counter
D=M - D
@HEART
D;JGE

@32765
D=A
@hvalue
M=D
@6
D=A
@counter
D=M - D
@HEART
D;JEQ

@16377
D=A
@hvalue
M=D
@5
D=A
@counter
D=M - D
@HEART
D;JEQ

@8177
D=A
@hvalue
M=D
@4
D=A
@counter
D=M - D
@HEART
D;JEQ

@4065
D=A
@hvalue
M=D
@3
D=A
@counter
D=M - D
@HEART
D;JEQ

@1985
D=A
@hvalue
M=D
@2
D=A
@counter
D=M - D
@HEART
D;JEQ

@897
D=A
@hvalue
M=D
@1
D=A
@counter
D=M - D
@HEART
D;JEQ

@257
D=A
@hvalue
M=D
@counter
D=M
@HEART
D;JEQ

(HEART)
   @hvalue
    D=M
   @haddress
   A=M
   M=D
   @haddress
   D=M
   @32
   D=D+A
   @haddress
   M=D
   @counter
   MD=M-1
   @HLOOP
   D;JGT

@k
MD = M-1
@HINIT
D;JGE
/////////////////////////// ��Ʈ �׸��� ��

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
@rc
M = M+1
@lc
MD = M-1
@RESTART
D;JGE
@rc
M = M-1
@lc
M = M+1
@KBDCHECK
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
@dc
M = M+1
@uc
MD = M-1
@RESTART
D;JGE
@dc
M = M-1
@uc
M = M+1
@KBDCHECK
0;JMP

(RIGHT)	///������
@previous
D=M
@address
M=D+1
@key
M=0
@lc
M = M+1
@rc
MD = M-1
@RESTART
D;JGE
@lc
M = M-1
@rc
M = M+1
@KBDCHECK
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
@uc
M = M+1
@dc
MD = M-1
@RESTART
D;JGE
@uc
M = M-1
@dc
M = M+1
@KBDCHECK
0;JMP
/////////////////////////// Ű���� üũ ��

