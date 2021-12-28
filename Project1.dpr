program Project1;
{$APPTYPE CONSOLE}
uses
  System.SysUtils, System.RegularExpressions, classes;
const
  regex_pattern   = '"(Keyword|Keyuword2).+?,';
var
  Regex           : TRegex;
  MatchCollection : TMatchCollection;
  x               : integer;
  sl              : TStringlist;
  line            : string;
begin
   Regex := TRegex.create(regex_pattern);
   sl    := Tstringlist.Create;

   writeln;
   sl.loadfromfile('..\..\reg_test_1.txt');
   for line in sl do  begin
      //writeln(line);
      MatchCollection := Regex.Matches(line);
      for x := 0 to MatchCollection.Count-1 do begin
          writeln(x.tostring, '  ', MatchCollection.item[x].value);
          writeln;
      end;
   end;

   writeln;
   sl.loadfromfile('..\..\reg_test_2.txt');
   for line in sl do  begin
      //writeln(line);
      MatchCollection := Regex.Matches(line);
      for x := 0 to MatchCollection.Count-1 do begin
          writeln(x.tostring, '  ', MatchCollection.item[x].value);
          writeln;
      end;
   end;

   sl.free;
   readln;
end.


