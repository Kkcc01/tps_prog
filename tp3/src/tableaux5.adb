with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure tableaux5 is
   NMAX : constant INTEGER := 10; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers
   nb_elements : INTEGER; --le nombre efefctif d'élements
   x : Integer; -- la valeur qu'on veut insérer
   y : Integer;
Begin
    un_tab := (10, 20, 30, 40, 50, others => 0);
    nb_elements := 5;
    Put_Line("Quelle est la valeur");
    Get(x);
    for i in reverse 1..nb_elements loop
        un_tab(i+1) := un_tab(i);
        end loop;
    nb_elements := nb_elements + 1;
    un_tab(1) := x;
    for j in 1..nb_elements loop
        Put(un_tab(j)); -- Affichage du tableau
    end loop;
end tableaux5;
