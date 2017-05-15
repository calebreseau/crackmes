program lcheck2_keygen;

uses
	sysutils,classes;

var
	total:tstrings;
	i:integer;
	tmp:string;
	sum:integer;
	rnd:integer;
begin
	randomize;
	total:=tstringlist.create;
	for i:=0 to 3 do
	begin
		tmp:='';
		sum:=0;
		while sum<400+3*i do
		begin
			rnd:=random(25)+97;
			if sum+rnd>400+3*i-25 then
			begin
				writeln('sum('+inttostr(sum)+')+rnd('+inttostr(rnd)+')='+inttostr(sum+rnd)+'>'+inttostr(400+3*i-25));
				tmp:=tmp+chr(400+3*i-sum);
				sum:=400+3*i;
			end
			else
			begin
				sum:=sum+rnd;
				tmp:=tmp+chr(rnd);
			end;
		end;
	total.add(tmp);
	end;
	writeln('Valid key: '+total[0]+'-'+total[1]+'-'+total[2]+'-'+total[3]);
end.
