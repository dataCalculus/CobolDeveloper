      ******************************************************************
      * Author: EMIRHAN GURSES
      * Date: 12.24.2023
      * Purpose: EDUCATION
      * Tectonics: cobc
      * INSPIRED BY OPENMAINFRAMEPROJECT
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. INTRO1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  KEYED-INPUT.
           05  CUST-NO-IN  PIC X(15).
           05  AMT1-IN     PIC 9(5).
           05  AMT2-IN     PIC 9(5).
           05  AMT3-IN     PIC 9(5).
       01  DISPLAYED-OUTPUT.
           05  CUST-NO-OUT PIC X(15).
           05  TOTAL-OUT   PIC 9(6).
       01  MORE-DATA       PIC X(3) VALUE "YES".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *COBOL AUTOMATICALLY TRIM IF MORE DIGITS ARE GIVEN


      *MAXIMUM LENGTH OF LOOP FLAG MORE-DATA IS 3
      *SO 1 WHITE SPACE IS GIVEN
           PERFORM UNTIL MORE-DATA = "NO "

      *CUSTOMER NUMBER INPUT
               DISPLAY "ENTER NAME     (15 CHARACTERS)"
               ACCEPT CUST-NO-IN

      *5 DIGIT PLACED TO IMPLEMENT AMOUNT OF PURCHASE
               DISPLAY "ENTER AMOUNT OF FIRST PURCHASE (5 DIGITS)"
               ACCEPT AMT1-IN

               DISPLAY "ENTER AMOUNT OF SECOND PURCHASE (5 DIGITS)"
               ACCEPT AMT2-IN

               DISPLAY "ENTER AMOUNT OF THIRD PURCHASE (5 DIGITS)"
               ACCEPT AMT3-IN

      *TO DISPLAY CUSTOMER NUMBER MOVE IT TO OUTPUT DATA
               MOVE CUST-NO-IN TO CUST-NO-OUT

      *PERFORM SOME ADDITION WRITE IT INTO TOTAL-OUT DATA
               ADD AMT1-IN AMT2-IN AMT3-IN
                   GIVING TOTAL-OUT

      *CUSTOMER NUMBER IS DISPLAYED WITH TOTAL PURCHASE
               DISPLAY CUST-NO-OUT "TOTAL AMOUNT =" TOTAL-OUT

      *CHECK LOOP CONTINUATION FLAG WHETHER YES OR NO
               DISPLAY "TO CONTINUE PLEASE ENTER YES OTHERWISE NO"
               ACCEPT MORE-DATA

      *UPPER-CASE FUNCTION IS USED TO FIX USER KEYED-INPUT MISTAKES
      *SO IT CONVERTS LOWER CASE INTO UPPER CASE
               MOVE FUNCTION UPPER-CASE(MORE-DATA) TO MORE-DATA

      *       OLD PARAGRAPH SHOWN AS COMMENT BELOW
      *       INSPECT MORE-DATA CONVERTING "noyes" TO "NOYES"

           END-PERFORM
           GOBACK.
