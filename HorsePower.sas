proc sort data=sashelp.cars out=cars;
by make;
run;

data horsepower;
set sashelp.cars(where=(cylinders <= 10)) nobs=numobs;
/*  set sashelp.cars nobs=numobs; */
	format dollarsPerHorse dollar12.2 runningAveragehorsePower 6.1;
	retain runninghorses;
	by make;

	if _n_ eq 1 then
		runninghorses=0;
	else
		runninghorses=runninghorses+horsepower;
	runningAveragehorsePower=runninghorses/_n_;
	dollarsPerHorse=invoice/Horsepower;
run;
