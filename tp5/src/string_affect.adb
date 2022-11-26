with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_affect is
   CMAX : constant INTEGER := 80; -- taille maximum de la chaine
   nom : STRING(1..CMAX); -- chaine
Begin
   -- remplissage des 20 premiers caractères
   for i in 1..20 loop
      nom(i) := 'a';
   end loop;
   -- affcihage des 10 premiers caractères
   for i in 1..10 loop
      Put(nom(i));
   end loop;
   -- affichage des 10 premiers caractères avec Put
   Put(nom(1..10);
       -- affichage des 10 premiers caractères avec Put et retour à la ligne
   Put_Line(nom(1..10));
end string_affect;
