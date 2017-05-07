program lcheck1_keygen;
uses
	sysutils;
var
	sum:integer;
	rnd:integer;
	final:string;
begin
	randomize;
	rnd:=0;
	sum:=0;
	while sum<1238 do
	begin
		rnd:=random(93)+33;			//pick a random number between 33 and 126
		if sum+rnd>1205 then
		begin
			final:=final+chr(1238-sum);
			sum:=1238;
		end
		else
		begin
			final:=final+chr(rnd);
			sum:=sum+rnd;
		end;
	end;
	writeln(final);
end.
