TITLE "V506 HOMEWORK04 PART 2 - JIVITESH POOJARY AND QIWEN ZHU";

DATA V506.Stemp;
	SET V506.Schools;
	IF Students>=2000 THEN SGroup=1;
	ELSE SGroup=0;
RUN;

/* Answer 3(a)*/
PROC TTEST DATA=V506.Stemp PLOTS=none ALPHA=0.05 SIDES=L;
	CLASS SGroup;
	VAR Salary;
RUN;

/* Answer 3(b)*/
PROC TTEST DATA=V506.Stemp PLOTS=none ALPHA=0.05 SIDES=2;
	CLASS SGroup;
	VAR Instruct;
RUN;

/* Answer 3(c)*/
PROC TTEST DATA=V506.Stemp PLOTS=none ALPHA=0.05 SIDES=2;
	CLASS SGroup;
	VAR Attend;
RUN;
