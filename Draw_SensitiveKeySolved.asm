/////////////////////////// 사각형 초기화
   @color		/// 색을 저장
   M=-1
   @19983	///시작점(16,8)
   D=A
   @address	
   M=D
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

(GRIDBOUNDCHK)	///그리드 범위 체크
@0
D=M
@KBD
D=A-D
@GRID
D;JGT
/////////////////////////// 그리드 그리기 끝
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
@RESTART
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
@RESTART
0;JMP

(RIGHT)	///오른쪽
@previous
D=M
@address
M=D+1
@key
M=0
@RESTART
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
@RESTART
0;JMP


