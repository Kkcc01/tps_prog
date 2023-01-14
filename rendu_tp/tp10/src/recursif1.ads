with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package recursif1 is

   NMAX : constant INTEGER := 100; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;

   procedure afficher_d_g(un_tab : in TAB_ENTIERS; taille : in Integer; index : in Integer);
   -- pre :
   -- post :
   procedure afficher_g_d (un_tab : in TAB_ENTIERS; taille : in Integer; index : in Integer);

   function indice (un_tab : in TAB_ENTIERS; taille : in Integer; x : in Integer) return Integer;
end recursif1;
