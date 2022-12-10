with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body mc91 is

   function mc(n : in Integer) return Integer is
   Begin
      if n > 100 then
         return n -10;
      else
         return mc(mc(n+11));
      end if;
   end mc;

   end mc91;

