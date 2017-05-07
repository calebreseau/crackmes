program lcheck0;
uses
	sysutils,strutils;

var
	total:integer;
	i:integer;
	key:array of Char;
	len:integer;
	str:string;
begin
	total:=0;
	if paramcount=1 then
	begin
		str:=paramstr(1);
		len:=length(paramstr(1));
		setlength(key,len);
		for i:=0 to len-1 do key[i]:=str[i+1];
		for i:= 0 to len-1 do
		begin
			total:=total+ord(key[i]);
		end;
		if total=100*12+8*4+3*2 then	//=1238
		begin
			writeln(paramstr(1)+' key is okay, access granted !');
		end
		else
		begin
			writeln(paramstr(1)+' is wrong, access denied');
		end;
	end
	else
	begin
		writeln('Usage :'+paramstr(0)+' <key>');
	end;
end.
