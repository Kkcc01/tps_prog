with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body recursif3 is

   procedure affiche(m : in Integer; n : in Integer) is
   Begin
      for a in 0..m loop
         for b in 0..n loop
            Put(10*a + b);
         end loop;
         New_Line;
      end loop;
   end affiche;


   procedure affiche_rec(m : in Integer; n : in Integer) is
   Begin

      afficher_rec(
   end affiche_rec;

end recursif3;
