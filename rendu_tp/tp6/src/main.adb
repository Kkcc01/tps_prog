with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with binaires; use binaires;

procedure Main is
   le_binaire : BINAIRE;
   x : integer;
begin
   le_binaire := (0, 0, 0, 0, 0, 0, 0, 1);
   afficher_bin(le_binaire);
   x := bin_to_dec(le_binaire);
   Put(x);
end Main;
