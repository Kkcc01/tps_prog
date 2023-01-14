with Ada.Text_IO; use Ada.Text_IO;
with Ada.Unchecked_Deallocation;

package body liste_double is

   procedure free is new Ada.Unchecked_Deallocation(Object => cellule, Name => liste);

   function creer_liste_vide return liste is
      une_liste : liste;
   Begin
      une_liste := new cellule;
      une_liste := null;
      return une_liste;
   end creer_liste_vide;


   function est_vide (une_liste : in liste) return boolean is
   Begin
      return une_liste = null;
   end est_vide;


   procedure ajouter (une_liste : in out liste; n : in INTEGER) is
      p : liste;
   Begin
      p := new cellule;
      p.all.valeur := n;
      p.all.suivant := une_liste;
      une_liste := p;
   end ajouter;


   procedure afficher_liste (une_liste : in liste) is
   Begin
      if une_liste /= null then
         Put(Integer'Image(une_liste.all.valeur));
         afficher_liste(une_liste.all.suivant);
      else
         raise liste_vide;
      end if;
   end afficher_liste;


   function rechercher (une_liste : in liste; e : in INTEGER) return liste is
      address : liste;
      temp_liste : liste;
   Begin
      if une_liste = null then
         raise liste_vide;
      else
         temp_liste := une_liste;
         while temp_liste /= null loop
            if temp_liste.all.valeur = e then
               address := temp_liste;
               return address; --la valeur est présente on renvoie l'adresse
            end if;
            temp_liste := temp_liste.suivant;
         end loop;
         return null;
      end if;
   end rechercher;


   procedure enlever(une_liste : in out liste; e : in INTEGER) is
      temp_liste, prec_liste : liste;
   Begin
      if une_liste = null then
         null;
      else
         temp_liste := une_liste;
         prec_liste := null;
         while temp_liste /= null and then temp_liste.all.valeur /= e loop
            prec_liste := temp_liste;
            temp_liste := temp_liste.suivant;
         end loop;
         if prec_liste = null then
            if temp_liste /= null then
               une_liste := temp_liste.all.suivant;
            end if;
         elsif temp_liste.all.valeur = e then
            prec_liste.all.suivant := temp_liste.all.suivant;
            free(temp_liste);
         end if;
      end if;
   end enlever;

   procedure test(une_liste : in out liste) is
      empty : boolean;

   begin
      une_liste := creer_liste_vide;
      empty := est_vide(une_liste);
      Put_Line(Boolean'Image(empty));
      inserer_en_tete(une_liste, 12);
      inserer_apres(une_liste, 14, 12);
      inserer_apres(une_liste, 15, 14);
      inserer_avant(une_liste, 7, 12);
      afficher_liste(une_liste);
      inserer_apres(une_liste, 8, 14);
      afficher_liste(une_liste);
   end test;


end liste_double;
