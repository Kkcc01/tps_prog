with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure eratosthene is
    -- déclaration des variables
   N : Natural;
   -- NMAX : constant INTEGER := N; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..N) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers
   nb_elements : INTEGER := 0; --le nombre efefctif d'élements

begin
   Put("le nombre N = ");
   get(N);
   -- boucle pour le tableau
   for i in 2..N loop
      un_tab(i) := i;
      Put(un_tab(i));
      nb_elements := nb_elements + 1;
   end loop;
   for i in 1..N loop
      for j in 2..N loop
         Put(un_tab(j));
         if un_tab(i) mod j = 0 and un_tab(i) /= j then
            un_tab(i) := 0;
         end if;
      end loop;
   end loop;
   for i in 1..N loop
      Put(un_tab(i)); -- Affichage du tableau
   end loop;
end eratosthene;
