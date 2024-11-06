       IDENTIFICATION DIVISION.
       PROGRAM-ID. EMPRESA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-AUX.
          03 A                      PIC X(54) VALUE SPACES.
          03 B                      PIC X(42) VALUE SPACES.
       01 C                         PIC X(96) VALUE SPACES.
       01 WS-TAB-EMPRESA.
          03 WS-TAB-SETOR           OCCURS 3 TIMES.
             05 WS-TAB-DEP          OCCURS 4 TIMES.
                07 WS-TAB-SERVIDOR  PIC X(2) OCCURS 4 TIMES.
       PROCEDURE DIVISION.
       00000-PRINCIPAL.
           PERFORM 00010-INICIO.
           PERFORM 00020-TROCAR-VALOR.
           PERFORM 00030-FIM.
       00000-END.

       00010-INICIO          SECTION.
           DISPLAY "INICIO DO PROGRAMA".
           DISPLAY " ".
           MOVE "010203040506070809101112131415161718192021222324252627"
             TO A.
           MOVE "282930343233343536373839404142434445464748"
             TO B.
             
           MOVE WS-AUX TO WS-TAB-EMPRESA.
           DISPLAY "AQUI: " WS-TAB-SERVIDOR(2,4,4) ".".
       00010-END.
      
       00020-TROCAR-VALOR    SECTION.
           DISPLAY "TESTE: " WS-TAB-EMPRESA.
       00020-END.

       00030-FIM             SECTION.
           DISPLAY " ".
           DISPLAY "FIM DO PROGRAMA".
           STOP RUN.
       00030-END.
