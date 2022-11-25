with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Alea; use Alea;

procedure jeu_devin2 is
    indice : Character;
    x : Natural;
    i : Natural;
begin
    i := 0;
    Put_Line("My guess is ");
    x := Alea_1_100;
    loop
        i := i + 1;
        Put(x);
        New_Line;
        Get(indice);
        if indice = '=' then
            Put("La mahine a gagné ");
            New_Line;
            Put(i);
            Put(" essais");
            New_Line;
            exit;
        elsif indice = '>' then
            x := x + 1;
            New_Line;
        elsif indice = '<' then
            x := x - 1;
            New_Line;
        else
            Put("L'indice est incorrect");
        end if;
    end loop;
end jeu_devin2;
