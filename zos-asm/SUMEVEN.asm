         TITLE 'SUM EVEN INTEGERS 0-100 (WITH COMMA + RC)'
SUMEVEN  START 0

***********************************************************************
* REGISTER EQUATES
***********************************************************************
R0       EQU   0
R1       EQU   1
R2       EQU   2
R3       EQU   3
R4       EQU   4         SUM accumulator
R5       EQU   5         Loop counter
R6       EQU   6         Dividend (for MOD)
R7       EQU   7         Remainder (from MOD)
R14      EQU   14        Return address
R15      EQU   15        Base register + return code

***********************************************************************
* MAIN ROUTINE
***********************************************************************
         USING *,R15

         SR    R4,R4         Clear SUM
         LA    R5,0          Counter = 0

LOOP     C     R5,=F'100'    End at 100
         BH    DONE          Exit loop when counter > 100

         LR    R6,R5         Copy counter
         SRDA  R6,32         Prepare for divide
         D     R6,=F'2'      Divide R6 by 2 → rem in R7
         LTR   R7,R7         Check if even
         BNZ   SKIP          Skip if remainder != 0 (odd)

         AR    R4,R5         Add even number to sum

SKIP     LA    R5,1(R5)      Increment counter
         B     LOOP

DONE     CVD   R4,PACKED     Convert sum in R4 to packed decimal
         MVC   EDITED,EDMASK Load edit mask with commas
         ED    EDITED,PACKED+2 Format into EBCDIC with commas
         MVC   MSG+38(6),EDITED Insert into message
         WTO   TEXT=MSG       Write to SYSOUT

         SR    R15,R15        Set return code = 0
         BR    R14            Return to caller

***********************************************************************
* STORAGE
***********************************************************************
MSG      DC    CL80'THE SUM OF EVEN INTEGERS FROM 0 TO 100 IS:       '
PACKED   DS    D               8-byte packed decimal from CVD
EDITED   DS    CL6             Enough for 5 digits + comma
EDMASK   DC    X'402040202021' Edit mask: Z,ZZZ9 in EBCDIC

         END   SUMEVEN
