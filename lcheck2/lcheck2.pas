program lcheck2;

{$mode objfpc}

uses
	sysutils,strutils,classes;

var
	i:integer;
	j:integer;
	input:string;
	keys:tstrings;
	sum:integer;
	bol:boolean;

function writeline(str:string):string;
begin
	result:=str;
end;

function strsplit(str:string;del:char):tstrings;
begin
	result:=tstringlist.create;
	assert(assigned(result));
	result.strictdelimiter:=true;
	result.delimiter:=del;
	result.delimitedtext:=str;
end;

begin

	if paramcount=1 then
	begin
		input:=paramstr(1);
		if input='ABI6-04BD-2212-KL2M' then
		begin
			writeline('Access granted !');
		end
		else
		begin
			writeline('Wrong key');
		end;
		if ansicontainsstr(input,'-') then
		begin
			keys:=strsplit(input,'-');
			if keys.count=4 then
			begin
				bol:=true;
				for i:=0 to 3 do
				begin
					sum:=0;
					for j:=0 to length(keys[i]) do
					begin
						sum:=sum+ord(keys[i][j]);
					end;
					if sum<>100*4+3*i then
					begin
						bol:=false;
					end;
				end;
				if bol=true then
				begin
					writeln(chr(65)+chr(99)+chr(99)+chr(101)+chr(115)+chr(115)+chr(32)+chr(103)+chr(114)+chr(97)+chr(110)+chr(116)+chr(101)+chr(100)); //ok
				end
				else
				begin
					writeln(chr(87)+chr(114)+chr(111)+chr(110)+chr(103)+chr(32)+chr(107)+chr(101)+chr(121)); //wrong key
				end;
			end
			else
			begin
				writeln(chr(87)+chr(114)+chr(111)+chr(110)+chr(103)+chr(32)+chr(107)+chr(101)+chr(121)); //wrong key
			end;
		end
		else
		begin
			//writeln(chr($87)+chr($114)+chr($111)+chr($110)+chr($103)+chr($32)+chr($107)+chr($101)+chr($121)); //wrong key
			writeln(chr(87)+chr(114)+chr(111)+chr(110)+chr(103)+chr(32)+chr(107)+chr(101)+chr(121)); //wrong key
		end;
	end
	else
	begin
		writeln('Usage: <key>');
	end;
end.
