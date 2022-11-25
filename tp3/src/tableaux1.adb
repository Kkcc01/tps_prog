with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure tableaux1 is
   NMAX : constant INTEGER := 5; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers
   nb_elements : INTEGER; --le nombre efefctif d'élements
Begin
   un_tab := (1, 2, 3, 4, 5);
   nb_elements := 5;
   for i in 1..nb_elements loop
     Put(un_tab(i)); -- Affichage du tableau
   end loop;
end tableaux1;
