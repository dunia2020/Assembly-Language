.MODEL SMALL
.STACK
.DATA
    KOIBHI DB "WELCOME TO HELL $"  ;KOIBHI IS A VARIABLE
    JOBHI  DB  " BEWARE WOLVES ARE INSIDE$";10,10,10,13, FOR NEW LINE
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9 ; STRING DISPLAY (ITS FIXED FUNCTION)
    LEA DX,KOIBHI
    INT 21H 
    ;INT 21H //DISPLAY 2 TIMES
     
      ;ENDL CODE 
        MOV AH, 2
        MOV DL, 10
        INT 21H ; FOR LINE BREAK (FIXED FUCNTION)
        INT 21H
        INT 21H
        INT 21H
        MOV DL, 13
        INT 21H
           
           
    MOV AH, 9
    LEA DX,JOBHI
    INT 21H    
    
    MOV AH, 4CH ; COMBINITION OF MOV AH, 4 A& INT 21H USED TO END DOS
    INT 21H
    MAIN ENDP
END MAIN