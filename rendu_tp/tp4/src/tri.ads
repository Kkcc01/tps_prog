with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package tri is
   NMAX : constant INTEGER := 6; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;
   un_tab : TAB_ENTIERS; -- un tableau d'au maximum NMAX entiers

   procedure tri_insertion(un_tab : in out TAB_ENTIERS);

   procedure afficher(un_tab : in TAB_ENTIERS);

end tri;
