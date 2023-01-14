with Ada.Text_IO; use Ada.Text_IO;

package body mc91 is

   function mc(n : in Natural) return Integer is
   Begin
      if n > 100 then
         return n - 10;
      else
         return mc(mc(n+11));
      end if;
   end mc;

   procedure afficher_mc(n : in Integer) is
   Begin
      if n <= 110 then
         Put(Integer'Image(mc(n + 11)));
         afficher_mc(n +1);
      end if;
   end afficher_mc;

end mc91;

