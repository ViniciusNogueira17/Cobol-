# Cobol - Iniciante
Projetos em Cobol

COBOL (Common Business Oriented Language) é uma linguagem de programação de alto nível, criada em 1959, para processamento de banco de dados, alguma curiosidades sobre Cobol: 
      -É amplamente utilizada em sistemas legados de grandes sistemas financeiros e governamentais 
      -É a linguagem de programação mais usada 
      -É conhecida por ser ideal para trabalhos de processamento em lote, como o processamento de transações financeiras, o gerenciamento de bancos de dados e a geração de relatórios 
      -A sintaxe do COBOL é semelhante ao inglês e foi projetada para ser autodocumentada e legível 
      -O código COBOL é dividido em quatro divisões: identificação, ambiente, dados e procedimento 
      -O COBOL é resistente às intempéries e às más profecias porque não é propriedade de uma empresa ou grupo de empresas. 
      -Varios bancos como Nubank, Banco do Brasil e Caixa utilizam cobol para o processamento de dados bancarios.

![image](https://github.com/user-attachments/assets/80a8da45-2942-4c2e-bb1d-907e5de54ccf)


Projetos em Cobol:

1-Primeiro projeto usando variaveis simples para calculo de data de aniversario:

##
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
##

2-Projeto que converte minutos em horas:

##
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
##

3- Uso de tabelas dentro do codigo
##
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
##
4- Codigo que verifica se uma palavra é um palindromo ou não, usando uma logica de inverter a palavra:

##
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
##

5- Codigo que conta o numero de vogais de um texto ou palavra usando o nivel 88:

       IDENTIFICATION      DIVISION.
       PROGRAM-ID. VOGAL.
      *
       ENVIRONMENT         DIVISION.
      *
       DATA                DIVISION.
      *
       FILE                SECTION.
       WORKING-STORAGE     SECTION.
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

6- Codigo para validar se um CPF é verdadeiro ou não(Maior projeto deste artigo):

##
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

##







