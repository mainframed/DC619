//AWESOME  JOB  (SETUP),
//             'Build Netsol',
//             CLASS=A,
//             MSGCLASS=X,
//             MSGLEVEL=(1,1)
//********************************************************************
//*
//* Desc: Build new NETSOL logon screen: DC619
//* Date: 02-12-2021
//* Built using Soldier of FORTRANs ANSi to EBCDiC builder
//*
//* Original ANSi File:   logon_screen.ans
//* Original ANSi Artist: Anonymous
//* Original ANSi Date:   20211202
//*
//* Command Line Args: --sysgen logon_screen.ans --ROW 20 --COL 20 
//*                    --member DC619 --file logon_screen.JCL 
//*                    --extended 
//*
//* After submitting run the following to refresh VTAM in hercules
//* console:
//*
//*     /P TSO
//*     /Z NET,QUICK
//*
//* Then the commands to bring the services back is:
//*
//*     /S NET
//*
//********************************************************************
//*
//* First delete the previous version if it exists
//*
//CLEANUP EXEC PGM=IDCAMS
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  *
 DELETE SYS1.UMODMAC(DC619)
 SET MAXCC=0
 SET LASTCC=0
//*
//* Then we "compress" SYS1.UMODMAC to free up space
//*
//COMP    EXEC COMPRESS,LIB='SYS1.UMODMAC'
//*
//* THEN WE COPY THE ORIGINAL NETSOL SOURCE FROM SYS1.AMACLIB
//* TO SYS1.UMODMAC
//*
//UMODMAC  EXEC PGM=IEBGENER
//SYSIN    DD DUMMY
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=SYS1.AMACLIB(NETSOL)
//SYSUT2   DD DISP=SHR,DSN=SYS1.UMODMAC(NETSOL)
//*
//* THEN WE UPDATE SYS1.UMODMAC(NETSOL) TO DISPLAY OUR CUSTOM 3270
//*
//UPDATE   EXEC PGM=IEBUPDTE
//SYSPRINT DD SYSOUT=*
//SYSUT1   DD DISP=SHR,DSN=SYS1.UMODMAC
//SYSUT2   DD DISP=SHR,DSN=SYS1.UMODMAC
//SYSIN    DD DATA,DLM=$$
./ ADD NAME=DC619
* NETSOL screen created by ANSi2EBCDiC.py
         PUSH  PRINT
         PRINT OFF
EGMSG    DS 0C EGMSG
         $WCC  (RESETKBD,MDT)
         $SBA  (1,1)
* (1,1) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    14C' '
         $SBA  (2,15)
* (2,15) (FG) Red 
         DC    X'2842F2'
         DC    43C'0'
         DC    C'.'
         $SBA  (3,1)
* (3,1) (FG) White 
         DC    X'2842FE'
         DC    14C' '
         $SBA  (3,15)
* (3,15) (FG) Red 
         DC    X'2842F2'
         DC    45C'0'
         DC    C'.'
         $SBA  (4,1)
* (4,1) (FG) White 
         DC    X'2842FE'
         DC    14C' '
         $SBA  (4,15)
* (4,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (4,18)
* (4,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    18C'.'
         $SBA  (4,36)
* (4,36) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'"'
         DC    7C'0'
         $SBA  (4,44)
* (4,44) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    15C'.'
         $SBA  (4,59)
* (4,59) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'"00.'
         $SBA  (5,1)
* (5,1) (FG) White 
         DC    X'2842FE'
         DC    14C' '
         $SBA  (5,15)
* (5,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (5,18)
* (5,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    19C':'
         $SBA  (5,37)
* (5,37) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' "0000'
         $SBA  (5,43)
* (5,43) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    17C':'
         DC    C'.'
         $SBA  (5,61)
* (5,61) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'"00.'
         $SBA  (6,1)
* (6,1) (FG) White 
         DC    X'2842FE'
         DC    11C' '
         $SBA  (6,12)
* (6,12) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'8'
         $SBA  (6,13)
* (6,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (6,15)
* (6,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (6,18)
* (6,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (6,23)
* (6,23) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' '
         DC    5C'0'
         $SBA  (6,29)
* (6,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    9C':'
         $SBA  (6,38)
* (6,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 000'
         $SBA  (6,42)
* (6,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    19C':'
         DC    C'.'
         $SBA  (6,62)
* (6,62) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C'"000'
         $SBA  (6,66)
* (6,66) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (6,68)
* (6,68) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'6'
         $SBA  (6,69)
* (6,69) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    14C' '
         $SBA  (7,15)
* (7,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (7,18)
* (7,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (7,23)
* (7,23) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' '
         DC    5C'0'
         $SBA  (7,29)
* (7,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    9C':'
         $SBA  (7,38)
* (7,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 000'
         $SBA  (7,42)
* (7,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (7,47)
* (7,47) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C' '
         $SBA  (7,48)
* (7,48) (FG) Red 
         DC    X'2842F2'
         DC    18C'0'
         $SBA  (7,66)
* (7,66) (FG) White 
         DC    X'2842FE'
         DC    11C' '
         $SBA  (8,12)
* (8,12) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'5'
         $SBA  (8,13)
* (8,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (8,15)
* (8,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (8,18)
* (8,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (8,23)
* (8,23) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' '
         DC    5C'0'
         $SBA  (8,29)
* (8,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    9C':'
         $SBA  (8,38)
* (8,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 000'
         $SBA  (8,42)
* (8,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (8,47)
* (8,47) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C' '
         $SBA  (8,48)
* (8,48) (FG) Red 
         DC    X'2842F2'
         DC    18C'0'
         $SBA  (8,66)
* (8,66) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (8,68)
* (8,68) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'1'
         $SBA  (8,69)
* (8,69) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    14C' '
         $SBA  (9,15)
* (9,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (9,18)
* (9,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (9,23)
* (9,23) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' '
         DC    5C'0'
         $SBA  (9,29)
* (9,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    9C':'
         $SBA  (9,38)
* (9,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 000'
         $SBA  (9,42)
* (9,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         $SBA  (9,47)
* (9,47) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C' '
         $SBA  (9,48)
* (9,48) (FG) Red 
         DC    X'2842F2'
         DC    18C'0'
         $SBA  (9,66)
* (9,66) (FG) White 
         DC    X'2842FE'
         DC    11C' '
         $SBA  (10,12)
* (10,12) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'8'
         $SBA  (10,13)
* (10,13) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'  '
         $SBA  (10,15)
* (10,15) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (10,18)
* (10,18) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         DC    C'.'
         $SBA  (10,24)
* (10,24) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 0000'
         $SBA  (10,29)
* (10,29) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    9C':'
         $SBA  (10,38)
* (10,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 000'
         $SBA  (10,42)
* (10,42) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    5C':'
         DC    15C'.'
         $SBA  (10,62)
* (10,62) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C' '
         $SBA  (10,63)
* (10,63) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (10,66)
* (10,66) (FG) White 
         DC    X'2842FE'
         DC    C'  '
         $SBA  (10,68)
* (10,68) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'9'
         $SBA  (10,69)
* (10,69) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    14C' '
         $SBA  (11,15)
* (11,15) (FG) Red 
         DC    X'2842F2'
         DC    C'"0000'
         $SBA  (11,20)
* (11,20) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    C'::::'
         DC    5C'.'
         DC    9C':'
         $SBA  (11,38)
* (11,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 0000'
         $SBA  (11,43)
* (11,43) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    19C':'
         $SBA  (11,62)
* (11,62) Normal Display (FG) White (FG) Turquoise 
         DC    X'2800002842F72842F5'
         DC    C' '
         $SBA  (11,63)
* (11,63) (FG) Red 
         DC    X'2842F2'
         DC    C'000'
         $SBA  (11,66)
* (11,66) (FG) White 
         DC    X'2842FE'
         DC    16C' '
         $SBA  (12,17)
* (12,17) (FG) Red 
         DC    X'2842F2'
         DC    C'"0000'
         $SBA  (12,22)
* (12,22) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    16C':'
         $SBA  (12,38)
* (12,38) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' '
         DC    5C'0'
         $SBA  (12,44)
* (12,44) Bold/Intense (FG) Grey 
         DC    X'2842FE'
         DC    18C':'
         $SBA  (12,62)
* (12,62) Normal Display (FG) White (FG) Red 
         DC    X'2800002842F72842F2'
         DC    C' 000'
         $SBA  (12,66)
* (12,66) (FG) White 
         DC    X'2842FE'
         DC    18C' '
         $SBA  (13,19)
* (13,19) (FG) Red 
         DC    X'2842F2'
         DC    C'"'
         DC    46C'0'
         $SBA  (13,66)
* (13,66) (FG) White 
         DC    X'2842FE'
         DC    20C' '
         $SBA  (14,21)
* (14,21) (FG) Red 
         DC    X'2842F2'
         DC    C'"'
         DC    44C'0'
         $SBA  (14,66)
* (14,66) (FG) White 
         DC    X'2842FE'
         DC    28C' '
         $SBA  (16,29)
* (16,29) Bold/Intense 
         DC    X'2842F7'
         DC    C'DEFCON GROUPS'
         $SBA  (16,42)
* (16,42) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C' '
         $SBA  (16,43)
* (16,43) Bold/Intense 
         DC    X'2842F7'
         DC    C'MAINFRAME'
         $SBA  (16,52)
* (16,52) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (18,5)
* (18,5) Bold/Intense (FG) Yellow 
         DC    X'2842F6'
         DC    C'Type:'
         $SBA  (18,10)
* (18,10) (FG) White 
         DC    X'2842F7'
         DC    C' LOGON USERNAME to access the system.'
         $SBA  (18,47)
* (18,47) Normal Display (FG) White 
         DC    X'2800002842F7'
         DC    C'    '
         $SBA  (20,5)
* (20,5) Bold/Intense (FG) Red 
         DC    X'2842F2'
         DC    C'ENTER HERE =='
         DC    X'6E'
         $SBA  (21,1)
* (21,1) Normal Display (FG) White 
         DC    X'2800002842F7'
* Insert Cursor and unprotected field
         $SBA  (20,20)
         DC    X'2842F2'  SA COLOR RED
         $SF   (UNPROT,HI)
         $IC
         DC    CL20' '
         DC    X'280000'
         DC    X'1DF8'     SF (PROT,HIGH INTENSITY)
         $SBA  (24,80)
         $SF   (SKIP,HI)
EGMSGLN EQU *-EGMSG
         POP   PRINT
./ CHANGE NAME=NETSOL
         CLI   MSGINDEX,X'0C'                                           23164802
         BNE   EGSKIP                                                   23164804
         LA    R3,EGMSGLN                                               23164808
         L     R4,=A(EGMSG)                                             23164810
*                                                                       23164812
         WRITE RPL=(PTRRPL),                                           X23164814
               OPTCD=(LBT,ERASE),                                      X23164816
               AREA=(R4),                                              X23164818
               RECLEN=(R3),                                            X23164820
               EXIT=WRITEND                                             23164822
*                                                                       23164824
         B EGOK                                                         23164826
*                                                                       23164828
*                                                                       23164830
EGSKIP   DS 0H EGSKIP                                                   23164832
EGOK     DS 0H EGOK                                                     23166010
         COPY DC619                       , logon screen copy book      66810010
$$
//*
//* With that done its time to assemble our new screen
//* We assemble SYS1.UMODMAC(NETSOL) with IFOX00
//*
//ASM     EXEC PGM=IFOX00,REGION=1024K
//SYSLIB   DD  DISP=SHR,DSN=SYS1.UMODMAC,DCB=LRECL=32720
//         DD  DISP=SHR,DSN=SYS2.MACLIB
//         DD  DISP=SHR,DSN=SYS1.MACLIB
//         DD  DISP=SHR,DSN=SYS1.AMODGEN
//SYSUT1   DD  UNIT=VIO,SPACE=(1700,(600,100))
//SYSUT2   DD  UNIT=VIO,SPACE=(1700,(300,50))
//SYSUT3   DD  UNIT=VIO,SPACE=(1700,(300,50))
//SYSPRINT DD  SYSOUT=*,DCB=BLKSIZE=1089
//SYSPUNCH DD  DISP=(NEW,PASS,DELETE),
//             UNIT=VIO,SPACE=(TRK,(2,2)),
//             DCB=(BLKSIZE=80,LRECL=80,RECFM=F)
//SYSIN    DD  *
ISTNSC00 CSECT ,
         NETSOL SYSTEM=VS2
         END   ,
//*
//* Then we link it and put it in SYS1.VTAMLIB(ISTNSC00)
//*
//LKED    EXEC PGM=IEWL,PARM='XREF,LIST,LET,NCAL',REGION=1024K
//SYSPRINT DD  SYSOUT=*
//SYSLIN   DD  DISP=(OLD,DELETE,DELETE),DSN=*.ASM.SYSPUNCH
//SYSLMOD  DD  DISP=SHR,DSN=SYS1.VTAMLIB(ISTNSC00)
//SYSUT1   DD  UNIT=VIO,SPACE=(1024,(200,20))
//*
//