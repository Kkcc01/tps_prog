with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure fibo is
    Nmax : Natural;
    f0 : Natural;
    f1 : Natural;
    f : Natural;
begin
    Put("Tapez le nombre Nmax (> 1) ");
    get(Nmax);
    f0 := 0;
    f1 := 1;
    loop
        f := f0 + f1;
        f0 := f1;
        f1 := f;
        Exit when f >= Nmax;
    end loop;
    New_Line;
    Put(f);
end fibo;
