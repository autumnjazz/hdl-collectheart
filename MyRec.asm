
(RESTART)
   @color		/// ���� ����
   M=-1
   @19983	///������(16,8)
   D=A
   @address	
   M=D
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
/////////////////////////// �簢�� �׸��� ��
(END)
@END
0;JMP

