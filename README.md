# Cobol - Projects
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

"
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
"

2-Projeto que converte minutos em horas:

"
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
"

3- Uso de tabelas dentro do codigo

![image](https://github.com/user-attachments/assets/5836605d-c4fc-4d2a-a13f-1135d8a5a9dc)

4- Codigo que verifica se uma palavra é um palindromo ou não, usando uma logica de inverter a palavra:

![image](https://github.com/user-attachments/assets/8ad00fe8-6335-4552-8e1c-326ebcb89ea8)

5- Codigo que conta o numero de vogais de um texto ou palavra usando o nivel 88:

![image](https://github.com/user-attachments/assets/ec8ec2f3-ac8f-4595-8d57-da312b7d4d0c)

![image](https://github.com/user-attachments/assets/ae952da3-a049-4aab-bf4f-245b2457e1c1)

![image](https://github.com/user-attachments/assets/830555dc-51c9-4a0a-b5b7-d5ad615aab39)

6- Codigo para validar se um CPF é verdadeiro ou não(Maior projeto deste artigo):

![image](https://github.com/user-attachments/assets/bf601b7a-4c6d-4ab0-ab42-76aa5db755e4)

![image](https://github.com/user-attachments/assets/3b38eba6-4b4b-4a82-b66c-1a073c0242ed)

![image](https://github.com/user-attachments/assets/db3b10ea-4f3b-4a2f-82e1-9e9fdcef9350)

![image](https://github.com/user-attachments/assets/32f4d856-0e9c-48d4-acd0-6c00352075d4)

![image](https://github.com/user-attachments/assets/4c132a60-29a1-42a1-8ed0-4d75ba291741)







