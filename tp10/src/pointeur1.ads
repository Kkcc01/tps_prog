with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package pointeur1 is
   TYPE PINT is access Integer;
   p : PINT;
   x : Integer;
Begin
   p := New Integer;
   p.all := 99;
   Put(p.all);
   Put_LIne("Quelle est la valeur voulue ?");
   Get(x);
   p.all := x;
   Put(p.all);
end pointeur1;
