//SUMEVEN  JOB (ACCT),'SUM EVEN',CLASS=A,MSGCLASS=X,NOTIFY=&SYSUID
//*
//ASMA     EXEC PGM=ASMA90,REGION=4096K,
//         PARM='OBJECT,LIST,XREF'
//SYSLIN   DD *
  INCLUDE SYSLIB(ASMMAC)       /* Adjust if your macro library is named differently */
  * Copy your assembler source below this line or in SYSIN DD
/*
//SYSIN    DD *
         TITLE 'SUM EVEN INTEGERS 0-100 (WITH COMMA + RC)'
SUMEVEN  START 0

R0       EQU   0
R1       EQU   1
R2       EQU   2
R3       EQU   3
R4       EQU   4
R5       EQU   5
R6       EQU   6
R7       EQU   7
R14      EQU   14
R15      EQU   15

         USING *,R15
         SR    R4,R4
         LA    R5,0

LOOP     C     R5,=F'100'
         BH    DONE
         LR    R6,R5
         SRDA  R6,32
         D     R6,=F'2'
         LTR   R7,R7
         BNZ   SKIP
         AR    R4,R5
SKIP     LA    R5,1(R5)
         B     LOOP

DONE     CVD   R4,PACKED
         MVC   EDITED,EDMASK
         ED    EDITED,PACKED+2
         MVC   MSG+38(6),EDITED
         WTO   TEXT=MSG
         SR    R15,R15
         BR    R14

MSG      DC    CL80'THE SUM OF EVEN INTEGERS FROM 0 TO 100 IS:       '
PACKED   DS    D
EDITED   DS    CL6
EDMASK   DC    X'402040202021'

         END   SUMEVEN
/*
//SYSLMOD  DD DSN=YOUR.LOADLIB(SUMEVEN),DISP=SHR
//LKED     EXEC PGM=IEWL,COND=(4,LT,ASMA),
//         PARM='LIST,LET,REUS'
//SYSLIN   DD *
  INCLUDE SYSLMOD(SUMEVEN)
  NAME SUMEVEN(R)
/*
//RUN      EXEC PGM=SUMEVEN
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//
