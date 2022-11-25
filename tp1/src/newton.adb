with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
procedure newton is
    -- d�claration des variables
    a1, a0 : Float;  -- le r�sultat
    k : Natural;     -- le rang de l'approximation
    x : Float;       -- le nombre r�el dont on cherche la racine
    d : Float;      -- (a1 - a0) que l'on va comparer � epsilon
    e : Float;       -- espilon : le nombre auquel il faut comparer d
begin
    Put("le nombre r�el est x = ");
    get(x);
    Put("epislon est e = ");
    get(e);
    -- boucle pour le calcul
    k := 0;
    a0 := 1.0;
    loop
        k := k + 1;
        a1 := 0.5 * (a0 + x/a0);
        d := abs(a1-a0);
        a0 := a1;
        Exit when d < e;
    End loop;
   New_Line;
   Put(Float'Image(a1) & " est la" & Integer'Image(k));
   Put("i�me approximation de la racine carr�e de" & Float'Image(x));
end newton;
