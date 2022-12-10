with Ada.Text_IO; use Ada.Text_IO;
with recursif1; use recursif1;
with mc91; use mc91;

procedure Main is
   un_tab : TAB_ENTIERS;
   taille : Integer := 100;
   n : Integer;
begin
   --for i in 0..110 loop --mc
   --n := mc(i);
   --Put(Integer'Image(n));
   --end loop;

   for i in 1..NMAX loop   --initialiser le tableau
      un_tab(i) := i;
   end loop;
   n := indice(un_tab, 100, 54);
   Put_Line(Integer'Image(n));
end Main;
