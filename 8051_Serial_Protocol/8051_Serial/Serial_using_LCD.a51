MOV TMOD,#20H
MOV TH1,#0F4H
MOV SCON,#50H
SETB TR1
MOV A,#'N'
ACALL TRANSFER
MOV A,#'M'
ACALL TRANSFER
MOV A,#'I'
ACALL TRANSFER
MOV A,#'M'
ACALL TRANSFER
MOV A,#'S'
ACALL TRANSFER
HERE:SJMP HERE
TRANSFER:MOV SBUF,A
WAIT:JNB TI,WAIT
CLR TI
RET
END