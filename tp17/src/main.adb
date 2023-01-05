with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with arbre; use arbre;

procedure Main is
   un_arbre : T_AB;
   empty : Boolean := false;
   -- max, size : integer;
begin
   Initialiser(un_arbre);
   -- empty := Est_Vide(un_arbre);
   -- Put(Boolean'Image(empty));
   Inserer(un_arbre, 10);
   Inserer(un_arbre, 9);
   Inserer(un_arbre, 1);
   Inserer(un_arbre, 6);
   Inserer(un_arbre, 3);
   Inserer(un_arbre, 5);
   Inserer(un_arbre, 7);
   Inserer(un_arbre, 14);
   Inserer(un_arbre, 12);
   Inserer(un_arbre, 12);
   --afficher(un_arbre);
   --empty := recherche(un_arbre, 11);
   --Put(Boolean'Image(empty));
   --modifier(un_arbre, 12, 9);
   --size := taille(un_arbre);
   --Put(Integer'Image(size));
   --max := maximum(un_arbre);
   --PUt(Integer'Image(max));
   supprimer(un_arbre, 2);
   afficher(un_arbre);

end Main;
