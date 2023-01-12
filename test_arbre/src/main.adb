with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with arbre; use arbre;

procedure Main is
   un_arbre : T_AB;
   empty : Boolean := false;
   -- max, size : integer;


begin
   Initialiser(un_arbre);
   Inserer(un_arbre, 1);
   Inserer(un_arbre, 3);
   Inserer(un_arbre, 5);
   Inserer(un_arbre, 6);
   Inserer(un_arbre, 7);
   Inserer(un_arbre, 9);
   Inserer(un_arbre, 10);
   Inserer(un_arbre, 12);
   Inserer(un_arbre, 14);
   afficher_larg(un_arbre);
end Main;
