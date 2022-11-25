with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure tableaux4 is
   NMAX : constant INTEGER := 5; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers
   nb_elements : INTEGER; --le nombre efefctif d'élements
   x : Integer;
Begin
   un_tab := (10, 20, 30, 40, 50);
   nb_elements := 5;
   Put_Line("Quelle valeur voulez vous?");
   Get(x);
    for i in 1..nb_elements loop
        if x = un_tab(i) then
            Put(Integer'Image(i));
            New_Line;
    elsif x /= un_tab(i) then
        Put_Line("valeur non présente");
    end if;
    end loop;
end tableaux4;
