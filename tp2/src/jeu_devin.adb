with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Alea; use Alea;

procedure jeu_devin is
    N : Natural;
    x : Natural;
    i : Natural;
begin
    N := Alea_1_100;
    i := 0;
    loop
        i := i + 1;
        Put_Line("What is your guess ? ");
        get(x);
        if x = N then
            Put("Félicitations, vous avez gagné ");
            New_Line;
            Put(i);
            Put(" essais");
            New_Line;
            exit;
        elsif x > N then
            Put("N est plus petit que ");
            Put(x);
            New_Line;
        elsif x < N then
            Put("N est plus grand que ");
            Put(x);
            New_Line;
        end if;
    end loop;
end jeu_devin;
