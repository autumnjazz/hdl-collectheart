// sensitive key problem 해결 (설정해놓은 속도에 따라 반응 속도가 달라진다)
// boundary problem 해결
// 하트 먹기 기능 추가

/////////////////////////// 사각형 초기화
   @color		/// 색을 저장
   M=-1
   @19983	///시작점(16,8)
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

/////////////////////////// 화면 초기화
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

(HORIZONTAL)	///수평선 그리기
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

(GRIDBOUNDARY)	///그리드 범위 체크
@0
D=M
@KBD
D=A-D
@GRID
D;JGT
/////////////////////////// 그리드 그리기 끝
/////////////////////////// 하트 지우기 시작


/////////////////////////// 하트 지우기 끝
/////////////////////////// 하트 그리기 시작 (3개)
///하트 초기화
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
/////////////////////////// 하트 그리기 끝

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
@key
D=M
@NEW
D;JNE
/////////////////////////// 사각형 그리기 끝
/////////////////////////// 키보드 체크 시작 
(KBDCHECK)
   @KBD
   D=M
   @key
   M=D
   @KBDCHECK
   D;JEQ

(NEW)	///다음 사각형 그리기
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

(LEFT)	///왼쪽
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

(UP)	///위
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

(RIGHT)	///오른쪽
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

(DOWN)	///아래
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
/////////////////////////// 키보드 체크 끝

