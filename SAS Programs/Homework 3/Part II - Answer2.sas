TITLE "V506 HOMEWORK04 PART 2 - JIVITESH POOJARY AND QIWEN ZHU";

DATA V506.ctemp;
	SET V506.CiaData;
RUN;

/* Answer 2(a)*/
PROC TTEST DATA=V506.ctemp PLOTS=none ALPHA=0.05 SIDES=2;
	CLASS G20;
	VAR LitRate;
RUN;

/* Answer 2(b)*/
DATA v506.ctemp2;
	SET v506.ctemp;
	IF GDPpCap>=20 THEN WCountry=1;
	ELSE WCountry=0;
RUN;

PROC TTEST DATA=V506.ctemp2 PLOTS=none ALPHA=0.01 SIDES=2;
	CLASS WCountry;
	VAR LifeExpc;
RUN;
