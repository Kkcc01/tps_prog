with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package recursif3 is

   NMAX : constant INTEGER := 100; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;

   procedure affiche(m : in Integer; n : in Integer);

   procedure affiche_rec(m : in Integer; n : in Integer);

end recursif3;
