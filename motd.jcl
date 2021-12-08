//MOTD JOB (JOB),'MOTD',CLASS=A,MSGLEVEL=(1,1),MSGCLASS=H,
//         NOTIFY=IBMUSER,USER=IBMUSER,PASSWORD=SYS1
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  DSN=SYS1.CMDPROC,DISP=SHR
//UPDATE05 EXEC PGM=IEBUPDTE,PARM=NEW
//SYSIN    DD  DATA,DLM='><'
./ ADD NAME=STDLOGON
        PROC 0
CONTROL NOMSG,NOLIST,NOSYMLIST,NOCONLIST,NOFLUSH
CLS
WRITE ******************************************-
*************************************
WRITE *                                         -
                                    *
WRITE *          _/_/_/    _/_/_/_/  _/_/_/_/   -
 _/_/_/    _/_/    _/      _/       *
WRITE *         _/    _/  _/        _/        _/-
        _/    _/  _/_/    _/        *
WRITE *        _/    _/  _/_/_/    _/_/_/    _/ -
       _/    _/  _/  _/  _/         *
WRITE *       _/    _/  _/        _/        _/  -
      _/    _/  _/    _/_/          *
WRITE *      _/_/_/    _/_/_/_/  _/          _/_-
/_/    _/_/    _/      _/           *
WRITE *                                         -
                                    *        
WRITE *                          DC619/DC858 MAI-
NFRAME                              *
WRITE *                                         -
                                    *
WRITE ******************************************-
*************************************
WRITE *                                         -
                                    *
WRITE * Type RFE to access the editor           -
                                    *
WRITE * Type CALL '&SYSUID.LOAD(HELLO)' To Run the -
exploitable program                 *
WRITE *                                         -
                                    *
WRITE ******************************************-
*************************************
REVINIT
><