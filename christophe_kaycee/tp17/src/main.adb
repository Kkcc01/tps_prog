with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with arbre_gen;

procedure Main is
   un_arbre : T_AB;
   empty : Boolean := false;
   -- max, size : integer;
   procedure print_int(n : in Integer) is
   Begin
      Put_Line(Integer'Image(n));
   end print_int;

   procedure print_char(lettre : in Character) is
   Begin
      Put(lettre);
      New_Line;
   end print_char;

   package abr_int is new arbre_gen (un_type => Integer);
   use abr_int;
   procedure afficher_int is new afficher(print_int);

   package abr_char is new arbre_gen (un_type => Character);
   use abr_char;
   procedure afficher_char is new afficher(print_char);

begin
   Initialiser(un_arbre);
   --Afficher(un_arbre);
   -- empty := Est_Vide(un_arbre);--empty := recherche(un_arbre, 12);
   --Put(Boolean'Image(empty));
   -- Put(Boolean'Image(empty));
   Inserer(un_arbre, 1);
   Inserer(un_arbre, 3);
   Inserer(un_arbre, 5);
   Inserer(un_arbre, 6);
   Inserer(un_arbre, 7);
   Inserer(un_arbre, 9);
   Inserer(un_arbre, 10);
   Inserer(un_arbre, 12);
   Inserer(un_arbre, 14);
   --modifier(un_arbre, 7, 8);
   afficher(un_arbre);
   --empty := recherche(un_arbre, 12);
   --Put(Boolean'Image(empty));
   --modifier(un_arbre, 12, 9);
   --size := taille(un_arbre);
   --Put(Integer'Image(size));
   --max := maximum(un_arbre);
   --PUt(Integer'Image(max));
   empty := recherche(un_arbre, 6);
   Put(Boolean'Image(empty));
   supprimer(un_arbre, 6);
   afficher(un_arbre);
   empty := recherche(un_arbre, 6);
   Put(Boolean'Image(empty));

end Main;
