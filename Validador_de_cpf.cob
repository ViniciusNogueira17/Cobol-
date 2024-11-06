       IDENTIFICATION      DIVISION.
       PROGRAM-ID. VALIDA-CPF.
      *
       ENVIRONMENT         DIVISION.
      *
       DATA                DIVISION.
      *
       FILE                SECTION.
       WORKING-STORAGE     SECTION.
       01 CPF              PIC X(11)   VALUE SPACES.
       01 DIGITO-A         PIC 9(01)   VALUE ZEROES.
       01 DIGITO-B         PIC 9(01)   VALUE ZEROES.
       01 RESULTADO        PIC 9(04)   VALUE ZEROES.
       01 RESTO            PIC 9(04)   VALUE ZEROES. 
       01 DIVIDENDO        PIC 9(04)   VALUE ZEROES.
       01 DIGITO           PIC 9(01)   VALUE ZEROES.
       01 DIVISOR          PIC 9(04)   VALUE ZEROES.
       01  DATA-HOJE.                    
           03 ANO          PIC 9(02).
           03 MES          PIC 9(02).
           03 DIA          PIC 9(02).
       01 FLAGL.
           03 FLAG-F  PIC X(11).
              88 FLAG-FALSO VALUE  "11111111111" 
                                   "22222222222"
                                   "33333333333" 
                                   "44444444444"
                                   "55555555555" 
                                   "66666666666"
                                   "77777777777" 
                                   "88888888888"
                                   "99999999999".
                                   
       01 X                PIC 9(04)   VALUE ZEROES.
       01 Y                PIC 9(04)   VALUE ZEROES.
       01 FIM              PIC X(01)   VALUE SPACES.
      *
       PROCEDURE           DIVISION.
       00000-PRINCIPAL.
           PERFORM 00010-INICIO.
           PERFORM 00020-PROCESSO.
           PERFORM 00030-FIM.
           STOP RUN.
       00010-INICIO        SECTION.
      * 
           ACCEPT DATA-HOJE FROM DATE.     
           DISPLAY "HOJE SAO: " DIA "/" MES "/20" ANO ".". 
           
           DISPLAY "INICIO DO PROGRAMA".
           DISPLAY " ".
           MOVE "N" TO FIM.
           MOVE 1   TO X.
           MOVE 10  TO Y.
           MOVE "02238237160" TO CPF.
           MOVE CPF TO FLAG-F.
           MOVE 11  TO DIVIDENDO.
           MOVE 0   TO DIVISOR.
           MOVE 0   TO RESULTADO.
           MOVE 0   TO RESTO.
      *    
       00010-END.
      *
       00020-PROCESSO      SECTION.
      * 
           IF FLAG-FALSO
              DISPLAY "*** NAO VERDADEIRO ***"
              PERFORM 00030-FIM
           END-IF.
           PERFORM 00021-CALCULA-DIGITO-A UNTIL FIM = "S".
           IF  CPF(10:1) NOT EQUAL DIGITO-A
               DISPLAY "*** CPF INVALIDO ***"
           ELSE
               MOVE "N" TO FIM
               PERFORM 00022-CALCULA-DIGITO-B UNTIL FIM = "S"
               IF CPF(11:1) NOT EQUAL DIGITO-B
                  DISPLAY "*** CPF INVALIDO ***"
               ELSE
                  DISPLAY "*** CPF VALIDO ***"
                  PERFORM 00023-BUSCA-UF
               END-IF
           END-IF.
       00020-END.
      *
       00021-CALCULA-DIGITO-A SECTION.
      * 
           MOVE CPF(X:1) TO DIGITO.
           COMPUTE DIVISOR = DIVISOR + (DIGITO * Y). 
           
           SUBTRACT 1 FROM Y.
           ADD 1 TO X.
           
           IF Y = 1
              DIVIDE DIVISOR BY DIVIDENDO GIVING RESULTADO 
              REMAINDER RESTO
              
              IF RESTO EQUALS 0 OR
                 RESTO EQUALS 1
                 MOVE 0 TO DIGITO-A
              ELSE
                 COMPUTE DIGITO-A = 11 - RESTO
              END-IF
              
              MOVE 2    TO X
              MOVE 10   TO Y 
              MOVE 0    TO DIGITO
              MOVE 0    TO DIVISOR
              MOVE 11   TO DIVIDENDO
              MOVE "S"  TO FIM
           END-IF.
       00021-END.
      *
        00022-CALCULA-DIGITO-B SECTION.
      * 
           MOVE CPF(X:1) TO DIGITO.
           COMPUTE DIVISOR = DIVISOR + (DIGITO * Y).
           
           SUBTRACT 1 FROM Y.
           ADD 1 TO X.
           
           IF Y = 1
              DIVIDE DIVISOR BY DIVIDENDO GIVING RESULTADO 
              REMAINDER RESTO
              
              IF RESTO EQUALS 0 OR
                 RESTO EQUALS 1
                 MOVE 0 TO DIGITO-B
              ELSE
                 COMPUTE DIGITO-B = 11 - RESTO 
              END-IF
              
              MOVE "S"  TO FIM
           END-IF.
       00022-END.
      *
       00023-BUSCA-UF         SECTION.
           DISPLAY "CPF FOI GERADO EM: "
           EVALUATE CPF(9:1)
               WHEN "1"
                   DISPLAY "DF, GO, MS, MT ou TO"
               WHEN "2"
                   DISPLAY "AC, AM, AP, PA, RO ou RR"
               WHEN "3"
                   DISPLAY "CE, MA ou PI"
               WHEN "4"
                   DISPLAY "AL, PB, PE ou RN"
               WHEN "5"
                   DISPLAY "BA ou SE"
               WHEN "6"
                   DISPLAY "MG"
               WHEN "7"
                   DISPLAY "ES ou RJ"
               WHEN "8"
                   DISPLAY "SP"
               WHEN "9"
                   DISPLAY "PR ou SC"
               WHEN "0"
                   DISPLAY "RS"
           END-EVALUATE.
               
       00023-END.
      *     
       00030-FIM           SECTION.
      * 
           DISPLAY " ".
           DISPLAY "FIM DO PROGRAMA".
           STOP RUN.
       00030-END.
      *
