with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with pile_entier; use pile_entier;
with calculatrice; use calculatrice;


procedure Main is

   la_calculette : pile;
begin
   --calculatrice.init(la_calculette);
   calculatrice.test(la_calculette);

end Main;
