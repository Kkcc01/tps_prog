with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure puissance is
   x : Float;
   n : Integer;
   i : Natural := 1;
   y : Float := 1.0;
begin
    Put_Line("Tapez le nombre x = ");
    get(x);
    Put_Line("Tapez l'exposant n = ");
    get(n);
    loop
      y := y*x;
      i := i + 1;
      exit when i > n;
    end loop;
    New_Line;
    Put(y);
end puissance;
