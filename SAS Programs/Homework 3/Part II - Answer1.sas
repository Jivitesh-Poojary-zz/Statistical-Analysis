TITLE "V506 HOMEWORK04 PART 2 - JIVITESH POOJARY AND QIWEN ZHU";

DATA V506.temp;
	SET V506.RealEstate;
RUN;

/* Answer 1(a)*/
PROC TTEST DATA=V506.temp PLOTS=none ALPHA=0.05 SIDES=2;
	CLASS Pool;
	VAR Price;
RUN;

/* Answer 1(b)*/
PROC TTEST DATA=V506.temp PLOTS=none ALPHA=0.05 SIDES=2;
	CLASS Garage;
	VAR Price;
RUN;

/* Answer 1(c)*/
DATA V506.temp2;
	SET V506.temp;
	IF Twnship=1 OR Twnship=2;
RUN;

PROC TTEST DATA=V506.temp2 PLOTS=none ALPHA=0.05 SIDES=2;
	CLASS Twnship;
	VAR Price;
RUN;

/* Answer 1(d)*/
PROC MEANS DATA=v506.temp MEDIAN;
	VAR Price;
RUN;

DATA v506.temp3;
	SET v506.temp;
	IF PRICE>=213.5699959 THEN dPrice=1;
	ELSE dPrice=0;
RUN;

PROC FREQ DATA=V506.temp3;
	WHERE  dPrice = 1;
	TABLES Pool/BINOMIAL(LEVEL=2) ALPHA=.05;
RUN;

PROC FREQ DATA=V506.temp3;
	WHERE  dPrice = 0;
	TABLES Pool/BINOMIAL(LEVEL=2) ALPHA=.05;
RUN;
