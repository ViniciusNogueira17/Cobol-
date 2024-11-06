       IDENTIFICATION      DIVISION.
       PROGRAM-ID. VOGAL.
      *
       ENVIRONMENT         DIVISION.
      *
       DATA                DIVISION.
      *
       FILE                SECTION.
       WORKING-STORAGE     SECTION.
       01 RESULT           PIC 9(04)   VALUE ZEROES.
       01 RESTO            PIC 9(04)   VALUE ZEROES. 
       01 A                PIC 9(04)   VALUE ZEROES.
       01 B                PIC 9(04)   VALUE ZEROES.
       01 BASE             PIC 9(02)   VALUE ZEROES.
       01 EXPOENTE         PIC 9(02)   VALUE ZEROES.
       01 RESULTADO        PIC 9(05)   VALUE ZEROES.
       01 PALAVRA          PIC X(30)   VALUE SPACES.
       01 CONTADOR         PIC 9(04)   VALUE ZEROES.
       01 I                PIC 9(04)   VALUE ZEROES.
       01 CONSOANTE.
           03 CONSOANTE-P  PIC X(01).
              88 CONSOANTE-OK VALUE "A" "E" "I" "O" "U".
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
      * RECEBE A PALAVRA A SER VERIFICADA
           MOVE "N" TO FIM.
           MOVE 1 TO X.
           MOVE "ANTICONSTITUCIONALISSIMAMENTE" TO PALAVRA.
      * VERIFICA O TAMANHO DA PALAVRA
           INSPECT PALAVRA TALLYING CONTADOR
           FOR CHARACTERS BEFORE SPACES.
           MOVE CONTADOR TO Y.
           MOVE 2 TO BASE.
           MOVE 4 TO EXPOENTE.
           COMPUTE RESULTADO = BASE ** EXPOENTE.
           DISPLAY RESULTADO.
           
           MOVE 108 TO A.
           MOVE 11 TO B.
           DIVIDE A BY B GIVING RESULT REMAINDER RESTO.
           DISPLAY "RESULTADO.: " RESULT.
           DISPLAY "RESTO.: " RESTO.
           
       00010-END.
      *
       00020-PROCESSO      SECTION.
      * CRIA A PALAVRA AO CONTRARIO
           PERFORM 00021-PALAVRA-CONTRARIO UNTIL FIM = "S".
       00020-END.
      *
       00021-PALAVRA-CONTRARIO SECTION.
      * CRIAR LOGICA PARA VER AS CONSOANTES DE PALAVRA
           MOVE PALAVRA(X:1) TO CONSOANTE-P.
           IF CONSOANTE-OK
              ADD 1 TO I
           END-IF.
           
           ADD 1 TO X.
           SUBTRACT 1 FROM Y.
           IF Y = 0
              MOVE "S" TO FIM
           END-IF.
       00021-END.
      *
       00030-FIM           SECTION.
      * GERAR UM RELATORIO FINAL
           DISPLAY "***********************************".
           DISPLAY "      ENCERRAMENTO DO PROGRAMA     ".
           DISPLAY "***********************************".
           DISPLAY " ".
           DISPLAY "TOTAL.........: " I.
           
           DISPLAY "FIM DO PROGRAMA".
       00030-END.
      *
