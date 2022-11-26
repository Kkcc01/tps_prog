with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure tri is
    NMAX : constant INTEGER := 6; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers
   nb_elements, mem : INTEGER; --le nombre efefctif d'élements
Begin
   un_tab := (9, 2, 8, 5, 1, 7);
   nb_elements := 6;
   for i in 2..nb_elements loop
      if un_tab(i) <= un_tab(i-1) then
         mem := un_tab(i-1);
         un_tab(i-1) := un_tab(i);
         un_tab(i) := mem;
      end if;
   end loop;
   for i in 1..nb_elements loop
     Put(un_tab(i)); -- Affichage du tableau
   end loop;
end tri;
