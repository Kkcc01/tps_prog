with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;


package body ensembles is

   function creer return ensemble is
      e : ensemble;
   Begin
      e.cardinal := 0;
      return e;
   end creer;

   function appartient(x : in Integer; e : in ensemble) return boolean is
      present : boolean := false;
   Begin
      for i in 1..e.cardinal loop
         if e.contenu(i) = x then
            present := true;
         end if;
      end loop;
      return present;
   end appartient;

   procedure ajouter(x : in Integer; e : in out ensemble) is
      ensemble_plein, element_present : exception;
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

   procedure afficher(e : in ensemble) is
   Begin
      for i in 1..e.cardinal loop
         Put(e.contenu(i));
      end loop;
      New_Line;
   end afficher;

   procedure supprimer(x : in Integer; e : in out ensemble) is
      j : Integer;
      ensemble_vide, element_absent : EXCEPTION;
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


   procedure test1 (e : in out ensemble) is
   Begin
      e := creer;
      ajouter(2, e);
      ajouter(3, e);
      ajouter(4, e);
      afficher(e);
      supprimer(3, e);
      afficher(e);
      supprimer(3, e);
   end test1;

   procedure test2 (e : in out ensemble) is
   Begin
      e := creer;
      ajouter(2, e);
      ajouter(3, e);
      ajouter(4, e);
      afficher(e);
      ajouter(3, e);
   end test2;


end ensembles;
