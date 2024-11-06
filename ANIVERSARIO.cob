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
       01  DATA-HOJE.
           03 ANO          PIC 9(02).
           03 MES          PIC 9(02).
           03 DIA          PIC 9(02).
       01  NIVERANO        PIC 9(04).
       01  NIVERDIA        PIC 9(02).
       01  NIVERMES        PIC 9(04).
       01  ANOATUAL        PIC 9(04).
       01  TEMPANO           PIC 9(04).
       01  TEMPMES           PIC 9(02).
       01  TEMPDIA           PIC 9(02).
       01  FIM               PIC X(01).
       PROCEDURE DIVISION.
       00000-PRINCIPAL            SECTION.
           PERFORM 00010-INICIO.
           PERFORM 00020-PROCESSO.
           PERFORM 00030-FIM.
           STOP RUN.
       00010-INICIO              SECTION.
           MOVE 2024 TO ANOATUAL
           MOVE 2009 TO NIVERANO
           MOVE 27 TO NIVERDIA
           MOVE 07 TO NIVERMES.

           ACCEPT DATA-HOJE FROM DATE.
           DISPLAY "HOJE SAO: " DIA "/" MES "/20" ANO ".".

       00010-END.
      *
       00020-PROCESSO           SECTION.
           COMPUTE TEMPANO = ANOATUAL - NIVERANO
           MOVE NIVERDIA TO TEMPDIA.
           MOVE NIVERMES TO TEMPMES.

       00020-END.
      *
       00030-FIM               SECTION.
           IF TEMPANO >= 19
             DISPLAY "VOCE E MAIOR DE IDADE"
           ELSE IF TEMPANO = 18
                 AND TEMPDIA EQUAL DIA
                 AND TEMPMES EQUAL MES
             DISPLAY "HOJE E SEU ANIVERSARIO"
           ELSE IF TEMPANO <= 18
             DISPLAY "VOCE E MENOR DE IDADE"
           END-IF.

       00030-END.
