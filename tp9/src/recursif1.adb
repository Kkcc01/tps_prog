with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body recursif1 is

   procedure afficher_d_g (un_tab : in TAB_ENTIERS; taille : in Integer; index : in Integer) is
   Begin
      if index <= taille then
         if index > 0 then
            if index = taille then
               Put(un_tab(index));
               afficher_d_g(un_tab, taille -1, index-1);
            else
               null;
            end if;
         else
            null;
         end if;
      else
         Put_Line("Indindex outex hors bornes");
      end if;
   end afficher_d_g;


   procedure afficher_g_d (un_tab : in TAB_ENTIERS; taille : in Integer; index : in Integer) is
   Begin
      if index <= taille and index >= 0 then

         Put(un_tab(index));
         afficher_g_d(un_tab, taille, index + 1);
      else
         Put_Line("Index hors bornes");
      end if;
   end afficher_g_d;


   function indice (un_tab : in TAB_ENTIERS; taille : in Integer; x : in Integer) return Integer is
      presence : Boolean := false;
      index : integer;
   Begin
      if x = un_tab(taille) then
         index := taille;
         presence := true ;
      else
         index := indice(un_tab, taille - 1, x);
         presence := true;
      end if;
      if presence = false then
         index := 0;
      end if;
      return index;
   end indice;


end recursif1;
