with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with binaires; use binaires;

procedure Main is
   b1, b2, res : BINAIRE;
begin
   b1 := (0, 0, 0, 0, 1, 0, 0, 0);
   b2 := (0, 0, 0, 0, 1, 0, 0, 0);
   test(b1, b2, res);
end Main;
