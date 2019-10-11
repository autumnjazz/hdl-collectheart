
(RESTART)
   @color		/// 색을 저장
   M=-1
   @19983	///시작점(16,8)
   D=A
   @address	
   M=D
/////////////////////////// 사각형 그리기 시작
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
/////////////////////////// 사각형 그리기 끝
(END)
@END
0;JMP

