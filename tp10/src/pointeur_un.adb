with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body pointeur_un is
   procedure pointe(p : in PINT) is
   Begin
      Put(p.all);
      Put_Line("Quelle est la valeur voulue ?");
      Get(x);
      p.all := x;
      Put(p.all);
   end pointe;
end pointeur_un;
