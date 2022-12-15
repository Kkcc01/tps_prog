with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with liste_chaine; use liste_chaine;

procedure Main is
   la_liste : liste;
   empty : boolean;
begin
   la_liste := creer_liste_vide;
   empty := est_vide(la_liste);
   Put_Line(Boolean'Image(empty));
   inserer_en_tete(la_liste, 12);
   inserer_apres(la_liste, 14, 12);
   inserer_apres(la_liste, 15, 14);
   inserer_avant(la_liste, 7, 12);
   afficher_liste(la_liste);
   enlever(la_liste, 14);
   afficher_liste(la_liste);
end Main;
