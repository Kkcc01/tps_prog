with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure somme is
    n : Natural;
    m : Natural;
   s : Natural := 0;
   i : Natural;
begin
    Put_Line("Tapez le nombre n");
    get(n);
    Put_Line("Tapez le nombre m");
    get(m);
    i := m;
    loop
        s := s + i;
        i := i + 1;
        exit when i > n;
    end loop;
    New_Line;
    Put(s);
end somme;
