with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


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
      for i in 1..NMAX loop
         if e.contenu(i) = x then
            present := true;
         end if;
      end loop;
      return present;
   end appartient;

   procedure ajouter(x : in Integer; e : in out ensemble) is
   Begin
      e.contenu(e.cardinal + 1) := x;
      e.cardinal := e.cardinal + 1;
   end ajouter;

   procedure afficher(e : in ensemble) is
   Begin
      for i in 1..e.cardinal loop
         Put(e.contenu(i));
      end loop;
   end afficher;

   procedure supprimer(x : in Integer; e : in out ensemble) is
      j : Integer;
   Begin
      if appartient(x, e) = true then
         for i in 1..e.cardinal loop
            if e.contenu(i) = x then
               j := i;
            end if;
         end loop;
         for i in reverse j..e.cardinal loop
            e.contenu(i) := e.contenu(i-1);
            e.cardinal := e.cardinal - 1;
         end loop;
      else
         New_Line;
         Put_Line("La valeur n'est pas présente");
      end if;
   end supprimer;


end ensembles;



