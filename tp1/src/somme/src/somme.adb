with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
package body somme is

   procedure sommer (m : in Integer; n : in Integer) is
      s : Integer := 0;
   Begin
      for i in m..n loop
         s := s + i;
      end loop;
      Put(s);
   end sommer;
end somme;
