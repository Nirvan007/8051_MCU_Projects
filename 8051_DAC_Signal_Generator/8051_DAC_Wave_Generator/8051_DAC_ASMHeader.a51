ORG 0000H
AJMP START
START:  MOV SP, #030H
MOV A, #000H
MOV P0,A
ACALL DELAY
ORL A, #01H
AGAIN: MOV P0,A
ACALL DELAY
RL A
CJNE A, 00H,NEXT
AJMP START
NEXT: SJMP AGAIN
DELAY: MOV TMOD ,#10H
MOV TL1, #18H
MOV TH1 ,#0FCH
MOV TCON, #40H
WAIT: JNB TCON.7,WAIT
MOV TCON ,#00H
RET
END