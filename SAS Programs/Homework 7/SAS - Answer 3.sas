TITLE "V506 HOMEWORK07 - JIVITESH POOJARY AND QIWEN ZHU";

DATA V506.BBtemp;
	SET v506.BASEBALL2009;
RUN;

PROC REG;
	MODEL WINS = BA SB ERRORS ERA HR LEAGUE;
RUN;

PROC REG;
	MODEL WINS = BA ERRORS ERA HR LEAGUE;
RUN;

PROC REG;
	MODEL WINS = BA ERRORS ERA HR;
RUN;

PROC CORR;
	VAR WINS BA SB ERRORS ERA HR LEAGUE;
RUN;
