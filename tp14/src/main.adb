with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with liste_gen;

procedure Main is
   procedure print_int(n : in Integer) is
   Begin
      Put_Line(Integer'Image(n));
   end print_int;

   procedure print_char(lettre : in Character) is
   Begin
      Put(lettre);
      New_Line;
   end print_char;

   package liste_entier is new liste_gen (un_type => Integer);
   use liste_entier;
   procedure afficher_int is new afficher_liste(print_int);

   package liste_char is new liste_gen (un_type => Character);
   use liste_char;
   procedure afficher_char is new afficher_liste(print_char);


   la_liste : liste_entier.liste;
   empty : boolean;



begin
   la_liste := creer_liste_vide;
   empty := est_vide(la_liste);
   Put_Line(Boolean'Image(empty));
   inserer_en_tete(la_liste, 12);
   inserer_apres(la_liste, 14, 12);
   inserer_apres(la_liste, 15, 14);
   inserer_avant(la_liste, 7, 12);
   --afficher_int(la_liste);
   enlever(la_liste, 14);
   --afficher_int(la_liste);
end Main;
