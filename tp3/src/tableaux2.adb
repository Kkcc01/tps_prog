with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure tableaux2 is
   NMAX : constant INTEGER := 5; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers
   nb_elements : INTEGER; --le nombre efefctif d'élements
Begin
   nb_elements := 5;
    for i in 1..nb_elements loop
        Put_Line("Insérez vos données");
        Get(un_tab(i)); -- Initialisation du tableau
   end loop;
    for j in 1..nb_elements loop
        Put(un_tab(j)); -- Affichage du tableau
   end loop;
end tableaux2;
