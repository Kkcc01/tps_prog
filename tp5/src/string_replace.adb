with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_replace is
   CMAX : constant INTEGER := 80; -- taille maximum de la chaine
   nom : STRING(1..CMAX); -- chaine
   l_nom : INTEGER;
Begin
   Put("tapez le nom : ");
   get_line(nom, l_nom);
   for i in 1..l_nom loop
      if nom(i) = 'A' then
         nom(i) := 'B';
      end if;
   end loop;
   Put(nom(1..l_nom));
end string_replace;
