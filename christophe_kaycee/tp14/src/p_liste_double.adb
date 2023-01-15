with Ada.Text_IO; use Ada.Text_IO;
with Ada.Unchecked_Deallocation;

package body P_liste_double is

   procedure free is new Ada.Unchecked_Deallocation(Object => T_cellule, Name => T_liste);

   procedure creer_liste_vide (une_liste : out T_liste) is
   Begin
      une_liste := new T_cellule;
      une_liste := null;
   end creer_liste_vide;


   function est_vide (une_liste : in T_liste) return boolean is
   Begin
      return une_liste = null;
   end est_vide;



   procedure ajouter(une_liste : in out T_liste; n : in INTEGER) is
      l, tmp: T_liste;
   Begin
      l := new T_cellule;
      l.all.valeur := n;
      if une_liste = null then
         une_liste := l;
         une_liste.all.prec := null;
         une_liste.all.suivant := null;
      else
         tmp := une_liste;
         if une_liste.all.valeur > n then
            if une_liste.all.prec = null then
               l.all.suivant := une_liste;
               tmp.all.prec := l;
               une_liste := tmp;
               une_liste.all.prec := null;
            else
               l.all.prec := une_liste.all.prec;
               l.all.suivant := une_liste;
               une_liste := l;
            end if;
         else
            ajouter(une_liste.all.suivant, n);
         end if;
      end if;
   end ajouter;


   procedure afficher_liste (une_liste : in T_liste) is
   Begin
      if une_liste /= null then
         Put(Integer'Image(une_liste.all.valeur));
         if une_liste.all.suivant /= null then
            afficher_liste(une_liste.all.suivant);
         end if;
      else
         raise liste_vide;
      end if;
      New_Line;
   end afficher_liste;


   function rechercher (une_liste : in T_liste; e : in INTEGER) return T_liste is
      address : T_liste;
      temp_liste : T_liste;
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


   procedure enlever(une_liste : in out T_liste; e : in INTEGER) is
      temp_liste, prec_liste : T_liste;
   Begin
      if une_liste = null then
         null;
      else
         temp_liste := une_liste;
         prec_liste := null;
         while temp_liste /= null and then temp_liste.all.valeur /= e loop
            prec_liste := temp_liste;
            temp_liste := temp_liste.all.suivant;
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

   procedure test(une_liste : in out T_liste) is
      empty : boolean;

   begin
      creer_liste_vide(une_liste);
      empty := est_vide(une_liste);
      Put_Line(Boolean'Image(empty));
      ajouter(une_liste, 12);
      afficher_liste(une_liste);
      ajouter(une_liste, 20);
      afficher_liste(une_liste);
      ajouter(une_liste, 13);
      afficher_liste(une_liste);
      ajouter(une_liste, 18);
      afficher_liste(une_liste);
      enlever(une_liste, 12);
      afficher_liste(une_liste);
   end test;


end P_liste_double;
