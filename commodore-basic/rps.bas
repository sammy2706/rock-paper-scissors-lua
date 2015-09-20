   1 REM VARIABLES
   5 HMOVE=-1
   9 REM VALID CHOICES
  10 DIM CHOICES$(2)
  20 CHOICES$(0)="rock"
  30 CHOICES$(1)="paper"
  40 CHOICES$(2)="scissors"
  49 REM CORRESPONDING LOSING MOVES
  50 DIM BEATS$(2)
  60 BEATS$(0)="scissors"
  70 BEATS$(1)="rock"
  80 BEATS$(2)="paper"
  89 REM PROMPT FOR AND VALIDATE USER INPUT
  90 PRINT "Your Move: ";:INPUT I$: GOSUB 1000
  99 REM GENERATE COMPUTER INPUT
 100 CMOVE=INT(RND(0)*3)
 110 IF HMOVE=-1 THEN GOTO 90
 119 REM CALCULATE WINNER
 120 IF HMOVE=CMOVE THEN PRINT "Tie, Replay!": GOTO 90
 130 IF BEATS$(HMOVE)=CHOICES$(CMOVE) THEN PRINT "You Win!"
 140 IF BEATS$(CMOVE)=CHOICES$(HMOVE) THEN PRINT "Computer Wins!"
 999 END
1000 REM VALIDATE USER INPUT
1010 FOR X=0 TO 2
1020 IF I$=CHOICES$(X) THEN HMOVE=X
1030 NEXT X
1040 RETURN