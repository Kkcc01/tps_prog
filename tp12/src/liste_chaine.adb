with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body liste_chaine is

   function creer_liste_vide return liste is
      une_liste : liste;
   Begin
      une_liste := new cellule;
      une_liste := null;
      return une_liste;
   end creer_liste_vide;


   function est_vide (une_liste : in liste) return boolean is
   Begin
      if une_liste = null then
         return true;
      else
         return false;
      end if;
   end est_vide;


   procedure inserer_en_tete (une_liste : in out liste; n : in Integer) is
   Begin
      if une_liste = null then
         une_liste := new cellule;
         une_liste.valeur := n;
      else
         une_liste.valeur := n;
      end if;
   end inserer_en_tete;


   procedure afficher_liste (une_liste : in liste) is
   Begin
      if une_liste = null then
         null;
      else
         Put_Line(Integer'Image(une_liste.valeur));
         afficher_liste(une_liste.suivant);
      end if;

   end afficher_liste;


   function rechercher (une_liste : in liste; e : in Integer) return liste is
      present : Boolean := false;
      address : liste;
      temp_liste : liste := une_liste;
   Begin
      address := une_liste; --j'initialise l'address à l'en tete qui pointe vers la première valeur
      if une_liste = null then
         return null; --la liste est vide
      else
         while temp_liste /= null loop
            if temp_liste.valeur = e then
               present := true;
               return address; --la valeur est présente on revoie l'adresse
            end if;
            address := temp_liste;
            temp_liste := temp_liste.suivant;
         end loop;
         if present = false then
            return null; --la valeur n'est pas présente
         end if;
      end if;
   end rechercher;


   procedure inserer_apres (une_liste : in out liste; n : in Integer; data : in Integer) is
      address_data : liste;
      temp_liste : liste := une_liste;
   Begin
      address_data := rechercher(une_liste, data);
      loop
         Exit when temp_liste.suivant = address_data;
         temp_liste := temp_liste.suivant;
      end loop;
      temp_liste.valeur := n;
      une_liste := temp_liste;
   exception
      when Constraint_Error => ("L'élément n'est pas dans la liste ou la liste est vide.");
   end inserer_apres;


   procedure enlever(une_liste : in out liste; e : in Integer) is
      address_e : liste := rechercher(une_liste, e);
   Begin
      if address_e = null then
         null;
      end if;
   end enlever;

end liste_chaine;
