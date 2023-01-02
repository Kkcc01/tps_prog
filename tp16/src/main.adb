with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with pile_entier; use pile_entier;

procedure Main is
la_pile : pile_integer;
begin
   test(la_pile);
   Put(la_pile.element);
   Put(la_pile.som);
end Main;
