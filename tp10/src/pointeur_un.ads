with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package pointeur_un is
   TYPE PINT is access Integer;
   p : PINT;
   x : Integer;
   procedure pointe(p : in PINT);
      -- pre :
      -- post :
end pointeur_un;
