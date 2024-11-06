      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MINUTOS      PIC 9(4)         VALUE ZEROES.
       01 DIVISOR      PIC 9(2)         VALUE ZEROES.
       01 RESTO        PIC 9(2)         VALUE ZEROES.
       01 RESULTADO    PIC 9(2)         VALUE ZEROES.
       PROCEDURE DIVISION.
       0000-PRINCIPAL.
           PERFORM 00010-INICIO.
           PERFORM 00020-PROCESSO.
           PERFORM 00030-FIM.
           STOP RUN.
       00010-INICIO              SECTION.
           MOVE 540 TO MINUTOS.
           MOVE 60 TO DIVISOR.


       OOO1O-END.

       00020-PROCESSO.
           DIVIDE MINUTOS BY DIVISOR GIVING RESULTADO REMAINDER RESTO.



       00020-END.

       00030-FIM               SECTION.



            DISPLAY RESULTADO "h" RESTO "min"

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
