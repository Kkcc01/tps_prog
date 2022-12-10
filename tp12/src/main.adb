with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with liste_chaine; use liste_chaine;

procedure Main is
   la_liste : liste;
   empty : boolean;
   occur : liste;
begin
   la_liste := creer_liste_vide;
   empty := est_vide(la_liste);
   Put_Line(Boolean'Image(empty));
   inserer_en_tete(la_liste, 12);
   empty := est_vide(la_liste);
   Put_Line(Boolean'Image(empty));
   afficher_liste(la_liste);
   occur := rechercher(la_liste, 11);
   afficher_liste(occur);
end Main;
