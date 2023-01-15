with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


package body P_ensemble is

   function creer return T_ensemble is
      e : T_ensemble;
   Begin
      e.cardinal := 0;
      return e;
   end creer;


   function appartient(x : in Integer; e : in T_ensemble) return boolean is
      present : boolean := false;
   Begin
      if e.cardinal > 0 then
         for i in 1..e.cardinal loop
            if e.contenu(i) = x then
               present := true;
            end if;
         end loop;
      else
         Put_Line("Ensemble vide.");
      end if;
      return present;
   end appartient;

   procedure ajouter(x : in Integer; e : in out T_ensemble) is
   Begin
      if appartient(x,e) /= true then
         if e.cardinal < NMAX then
            e.contenu(e.cardinal + 1) := x;
            e.cardinal := e.cardinal + 1;
         else
            raise ensemble_plein;
         end if;
      else
         raise element_present;
      end if;
   end ajouter;


   procedure afficher(e : in T_ensemble) is
   Begin
      if e.cardinal > 0 then
         for i in 1..e.cardinal loop
            Put(e.contenu(i));
         end loop;
         New_Line;
      else
         Put_Line("Rien à afficher, l'ensemble est vide.");
      end if;
   end afficher;


   procedure supprimer(x : in Integer; e : in out T_ensemble) is
      j : Integer;
   Begin
      if e.cardinal > 0 then
         if appartient(x, e) = true then
            for i in 1..e.cardinal loop
               if e.contenu(i) = x then
                  j := i;
               end if;
            end loop;
            for i in j..e.cardinal - 1 loop
               e.contenu(i) := e.contenu(i+1);
            end loop;
            e.cardinal := e.cardinal - 1;
         else
            New_Line;
            raise element_absent;
         end if;
      else
         raise ensemble_vide;
      end if;
   end supprimer;


   procedure test1 (e : in out T_ensemble) is
   Begin
      e := creer;
      ajouter(2, e);
      ajouter(3, e);
      ajouter(4, e);
      afficher(e);
      supprimer(3, e);
      afficher(e);
      supprimer(3, e);
   EXCEPTION
      when ensemble_plein => Put_Line("L'ensemble est déjà plein");
      when element_present => Put_Line("L'élèment est déjà présent.");
      when element_absent => Put_Line("Impossible de supprimer un élèment qui n'est pas dans l'ensemble.");
      when ensemble_vide => Put_Line("L'ensemble est vide");
   end test1;

   procedure test2 (e : in out T_ensemble) is
   Begin
      e := creer;
      ajouter(2, e);
      ajouter(3, e);
      ajouter(4, e);
      afficher(e);
      ajouter(3, e);
      EXCEPTION
      when ensemble_plein => Put_Line("L'ensemble est déjà plein");
      when element_present => Put_Line("L'élèment est déjà présent.");
      when element_absent => Put_Line("Impossible de supprimer un élèment qui n'est pas dans l'ensemble.");
      when ensemble_vide => Put_Line("L'ensemble est vide");
   end test2;


end P_ensemble;
