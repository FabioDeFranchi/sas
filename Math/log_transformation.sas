/*gerando dados de exemplo*/
data dados;

call streaminit(1);

	do i=1 to 1000;
		x = RAND('LOGNormal', 13, 0.6);
		y = log(x);	

		output;
	end;
	
	drop i;
run;

proc sgplot data=work.dados;
   histogram x ;  
   density x;
   xaxis label="Preço";
run;

proc sgplot data=work.dados;
   histogram y ;   
   density y;
   xaxis label="Log do Preço";
run;

