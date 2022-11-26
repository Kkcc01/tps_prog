with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_char is
   c : CHARACTER;
   n : INTEGER;
Begin
   n := CHARACTER'POS(c); --le numéro d'ordre du caractère c
   c := CHARACTER'VAL(n); -- le caractère associé au numéro d'ordre n
end string_char;
