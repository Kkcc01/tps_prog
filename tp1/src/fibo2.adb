with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure fibo2 is
    n : Natural;
    f0 : Natural;
    f1 : Natural;
    f : Natural;
    i : Natural;
begin
    Put("Tapez le nombre n (>= 0) ");
    get(n);
    f0 := 0;
    f1 := 1;
    i := 1;
    loop
        Exit when i = n;
        f := f0 + f1;
        f0 := f1;
        f1 := f;
        i := i + 1;
    end loop;
    New_Line;
    Put(f0);
end fibo2;
