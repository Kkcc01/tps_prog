with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

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
   a, b : INTEGER;
   Begin
      a := m;
      b := n;
      if a > 0 then
         if b > 0 then
            Put(10*(a-m) + (b-n));
            affiche_rec(m, n - 1);
         end if;
         New_Line;
         affiche_rec(m - 1, n);
      end if;
   end affiche_rec;

end recursif3;
