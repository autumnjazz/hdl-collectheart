
/////////////////////////// 하트 그리기 시작 (3개)
///하트 초기화
   @2
   D = A
   @k
   M = D
@first
M=1
@second
M=1
@third
M=1

(FH)
   @19476
   D=A
   @haddress
   M=D
   @first
    D=M
   @SET
   D;JNE
(SH)
   @16415
   D=A
   @haddress
   M=D
   @second
    D=M
   @SET
   D;JNE
(TH)
   @22028
   D=A
   @haddress
   M=D
   @third
    D=M
   @SET
   D;JNE

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



/////////////////////////// 하트 그리기 끝

(END)
@END
0;JMP