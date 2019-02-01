program CarreMagique;

uses crt; 

CONST
	taillemax = 5;
VAR	
	tableau: ARRAY[1..taillemax,1..taillemax]  OF INTEGER;
	i, j, middle, nombre, cont : INTEGER;

procedure INIT;
begin
	FOR i:=1 TO taillemax DO 
	begin
		FOR j:=1 TO taillemax DO 
		begin
			tableau[i,j]:=0;
		end;
	end;
end;

procedure Affichage;
begin
	FOR i:=1 TO taillemax DO
		begin
		FOR j:=1 TO taillemax Do
		begin
	  		write('|');
			write(tableau[i,j]:2);
		end;
	
		write('|');
		writeln();
	end;
end;

procedure INITPosition;
begin
	middle:=((taillemax DIV 2)+1);
	
	i:=middle-1;
	j:=middle;
	tableau[i,j]:=nombre;

end;

procedure Remplissage;
begin
	FOR cont:=1 TO (taillemax*taillemax)-1 DO
		begin
		  nombre:=nombre+1;
		  i:=i-1;
		  j:=j+1;

		IF i>taillemax THEN 
			i:=1;
		IF j>taillemax then
			j:=1;
		IF j<1 then
		  j:=taillemax;
		IF i<1 then
		  i:=taillemax;

		WHILE tableau[i,j]<>0 DO
		begin
		  i:=i-1;
		  j:=j-1;

		IF i>taillemax THEN 
			i:=1;
		IF j>taillemax then
			j:=1;
		IF j<1 then
		  j:=taillemax;
		IF i<1 then
		  i:=taillemax;
		end;

		  tableau[i,j]:=nombre;
		end;
	
end;
BEGIN 
nombre:=1;

	INIT;

	INITPosition;

	Remplissage;
	 	
	Affichage;
END.
