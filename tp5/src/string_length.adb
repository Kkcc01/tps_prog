with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_length is
   CMAX : constant INTEGER := 80; -- taille maximum de la chaine
   nom : STRING(1..CMAX); -- chaine
   l_nom : INTEGER;
Begin
   Put("tapez la nom : ");
   get_line(nom, l_nom);
   Put_Line(nom(1..l_nom));
end string_length;
