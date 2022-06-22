
%macro deleteSASTable(NAME=, SASLIB=);
/*	
	Makro usuwa wskazaną tabelę SASową.

	Przykład: 
				%deleteSASTable(NAME=CLASS, SASLIB=WORK); 
*/
	proc datasets library=&SASLIB.;
	   delete &NAME.;
	run;

%mend deleteSASTable;