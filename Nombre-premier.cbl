       IDENTIFICATION DIVISION. 
       PROGRAM-ID. NombrePremier.
       AUTHOR. Bruno.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.

      *--------------
       DATA DIVISION.
      *--------------
       WORKING-STORAGE SECTION.
       01  N              PIC 9(3) VALUE ZERO.
       01  ENT            PIC 9(3) VALUE ZERO.
       01  RESTE          PIC 9(3) VALUE ZERO.
       01  RESULTAT       PIC 9(3) VALUE ZERO.
       

       PROCEDURE DIVISION.

           PERFORM RECUEILLIR-NOMBRE.
           PERFORM TRAITEMENT-PRINCIPAL.
           PERFORM AFFICHAGE.
           STOP RUN.

       RECUEILLIR-NOMBRE.
           DISPLAY 'Veuillez entrer un entier naturel: '.
           ACCEPT N.

       TRAITEMENT-PRINCIPAL.
           MOVE 2 TO ENT. 
           PERFORM UNTIL ENT >=  N
               DIVIDE N BY ENT GIVING RESULTAT REMAINDER RESTE
                   IF RESTE = 0 THEN
                   DISPLAY 'Ce n''est pas un nombre premier'
                   STOP RUN
                   END-IF
                ADD 1 TO ENT
           END-PERFORM.
       
       AFFICHAGE.
           IF N = ENT THEN
               DISPLAY 'C''est un nombre premier !'
           END-IF.
               