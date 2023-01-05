with Ada.Text_IO; use Ada.Text_IO;
with Ada.Unchecked_Deallocation;

package body arbre is

   procedure free is new Ada.Unchecked_Deallocation(Object => T_noeud, Name => T_AB);

   procedure Initialiser(Abr: out T_AB) is
   Begin
      Abr := new T_noeud;
      Abr := null;
   end Initialiser;


   function Est_Vide (Abr : in T_AB) return Boolean is
   Begin
      return (Abr = null);
   end Est_Vide;


   function Taille (Abr : in T_AB) return Integer is
   Begin
      if Abr = null then
         return 0;
      else
         return taille(Abr.all.f_g) + taille(Abr.all.f_d) + 1;
      end if;
   end taille;


   procedure Inserer (Abr : in out T_AB ; Donnee : in Integer) is
      temp : T_AB;
      donnee_presente : EXCEPTION;
   Begin
      if Abr = null then
         temp := new T_noeud;
         temp.all.contenu := Donnee;
         Abr := temp;
      else
         if Abr.all.contenu > Donnee then
            Inserer(Abr.all.f_g, Donnee);
         elsif Abr.all.contenu < Donnee then
            Inserer(Abr.all.f_d, Donnee);
         else
            raise donnee_presente;
         end if;
      end if;
   end inserer;

   function Recherche (Abr : T_AB; Donnee: in Integer) return Boolean is
   Begin
      if Abr /= null then
         if Abr.all.contenu > Donnee then
            return Recherche(Abr.all.f_g, Donnee);
         elsif Abr.all.contenu < Donnee then
            return Recherche(Abr.all.f_d, Donnee);
         else
            return True;
         end if;
      else
         return false;
      end if;
   end recherche;


   procedure Modifier (Abr : in out T_AB ; src_donnee : in Integer; tar_donnee : in Integer) is
   Begin
      if Abr /= null then
         if Abr.all.contenu > src_donnee then
            modifier(Abr.all.f_g, src_donnee, tar_donnee);
         elsif Abr.all.contenu < src_donnee then
            modifier(Abr.all.f_d, src_donnee, tar_donnee);
         else
            Abr.all.contenu := tar_donnee;
         end if;
      end if;

   end modifier;

   procedure Supprimer (Abr : in out T_AB; donnee : in Integer) is
      noeud_temp: T_AB;
      abr_vide, donnee_absente: EXCEPTION;
   Begin
      if Abr = null then
         raise abr_vide;
      else
         if Recherche(Abr, donnee) then
            if Abr.all.contenu = donnee then
               if Abr.all.f_g = null and then Abr.all.f_d = null then -- cas ou le noeud n'a pas de fils, on libere direct le noeud
                  free(Abr);
               elsif Abr.all.f_g = null and then Abr.all.f_d /= null then    -- cas ou le noeud a un fils à droite
                  noeud_temp := Abr;
                  free(Abr);
                  noeud_temp:= noeud_temp.all.f_d;
                  Abr := noeud_temp;
               elsif Abr.all.f_g /= null and then Abr.all.f_d = null then -- cas ou le noeud a un fils à gauche
                  noeud_temp := Abr;
                  free(Abr);
                  noeud_temp.all.f_g := noeud_temp.all.f_g;
                  Abr := noeud_temp;
               elsif Abr.all.f_g /= null and then Abr.all.f_d /= null then -- cas ou le noeud a deux fils
                  noeud_temp := Abr;
                  free(Abr);
                  noeud_temp.all.contenu := maximum(noeud_temp);
                  supprimer(noeud_temp, maximum(noeud_temp));
               end if;
            elsif donnee < Abr.all.contenu then
               supprimer(Abr.all.f_g, donnee);
            elsif donnee > Abr.all.contenu then
               supprimer(Abr.all.f_d, donnee);
            end if;
         else
            raise donnee_absente;
         end if;
      end if;
   end supprimer;


   procedure Afficher (Abr : in T_AB) is
   Begin
      if Abr.f_g /= null then
         Afficher(Abr.all.f_g);
      end if;
      Put(Integer'Image(Abr.contenu));
      New_Line;
      if Abr.all.f_d /= null then
         afficher(Abr.all.f_d);
      end if;
   end afficher;


   function maximum (Abr : T_AB) return Integer is
   Begin
      if Abr /= null then
         if Est_Vide(Abr.all.f_d) then
            return Abr.all.contenu;
         else
            return maximum(Abr.all.f_d);
         end if;
      else
         -- raise abr_vide;
         return 0;
      end if;
   end maximum;


end arbre;
