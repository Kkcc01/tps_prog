with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure strings is
   CMAX : constant INTEGER := 80; -- taille maximum de la chaine
   nom : STRING(1..CMAX); -- chaine
   l_nom : INTGER -- longueur de la chaine
   CMAX2 : constant INTEGER := 20; -- taille maximum de la chaine
   nom2 : STRING(1..CMAX2); -- chaine
   l_nom2 : INTGER -- longueur de la chaine
Begin
      nom(1..4) := "info";
      nom2(1..5) := ..;
      nom(1..l_nom) := nom2(1..l_nom2); -- n'est correct que si l_nom = l_nom2
end strings;
