with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with ensembles; use ensembles;
procedure Main is
   e2 : ensemble;
begin
   e2 := creer;
   ajouter(2, e2);
   ajouter(3, e2);
   ajouter(4, e2);
   ajouter(3, e2);
   afficher(e2);
   supprimer(3, e2);
   afficher(e2);
   supprimer(1, e2);
end Main;
