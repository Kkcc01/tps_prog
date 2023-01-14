with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body pointeur_un is

   procedure pointe(p : in out PINT) is
      x : Integer;
   Begin
      p := new Integer'(99);
      Put_Line(Integer'Image(p.all));
      Put_Line("Quelle est la valeur voulue ?");
      Get(x);
      p.all := x;
      Put(p.all);
   end pointe;


end pointeur_un;
