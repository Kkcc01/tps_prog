with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with pile_entier; use pile_entier;
with calculatrice; use calculatrice;



procedure Main is


   la_pile : pile;
begin
   creer_pile_vide(la_pile);
   get_ope(la_pile);
   get_ope(la_pile);
   get_ope(la_pile);
   afficher_pile(la_pile);
end Main;
