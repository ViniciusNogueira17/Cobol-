       IDENTIFICATION      DIVISION.
       PROGRAM-ID. PALINDROMO.
      *
       ENVIRONMENT         DIVISION.
      *
       DATA                DIVISION.
      *
       FILE                SECTION.
       WORKING-STORAGE     SECTION.
       01 PALAVRA          PIC X(30)   VALUE SPACES.
       01 PALAVRA-INV      PIC X(30)   VALUE SPACES.
       01 CONTADOR         PIC 9(04)   VALUE ZEROES.
       01 I                PIC 9(04)   VALUE ZEROES.
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
           MOVE "agamenom" TO PALAVRA.
      * VERIFICA O TAMANHO DA PALAVRA
           INSPECT PALAVRA TALLYING CONTADOR
           FOR CHARACTERS BEFORE SPACES.
           MOVE CONTADOR TO Y.
       00010-END.
      *
       00020-PROCESSO      SECTION.
      * CRIA A PALAVRA AO CONTRARIO
           PERFORM 00021-PALAVRA-CONTRARIO UNTIL FIM = "S".
           IF PALAVRA = PALAVRA-INV
              DISPLAY "EH UM PALINDROMO."
           ELSE
              DISPLAY "NAO EH UM PALINDROMO."
           END-IF.
       00020-END.
      *
       00021-PALAVRA-CONTRARIO SECTION.
      * CRIAR LOGICA PARA COLOCAR PALAVRA AO CONTRARIO
           MOVE PALAVRA(X:1) TO PALAVRA-INV(Y:1).
           ADD 1 TO X.
           SUBTRACT 1 FROM Y.
           IF Y = 0
              MOVE "S" TO FIM
           END-IF.
       00021-END.
      *
       00030-FIM           SECTION.
      * GERAR UM RELATORIO FINAL
           DISPLAY "FIM DO PROGRAMA".
       00030-END.
      *
