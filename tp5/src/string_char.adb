with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_char is
   c : CHARACTER;
   n : INTEGER;
Begin
   n := CHARACTER'POS(c); --le num�ro d'ordre du caract�re c
   c := CHARACTER'VAL(n); -- le caract�re associ� au num�ro d'ordre n
end string_char;
