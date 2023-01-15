with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body tri is

   procedure tri_insertion(un_tab : in OUT TAB_ENTIERS) is
   mem : integer;
   Begin
      for j in un_tab'range loop
         for i in reverse 2..j loop
            exit when un_tab(i) >= un_tab(i-1);
            mem := un_tab(i-1);
            un_tab(i-1) := un_tab(i);
            un_tab(i) := mem;
         end loop;
      end loop;
   end tri_insertion;


   procedure afficher(un_tab : in TAB_ENTIERS) is
   Begin
      for i in un_tab'range loop
         Put(un_tab(i));
      end loop;
      New_Line;
   end afficher;


end tri;
