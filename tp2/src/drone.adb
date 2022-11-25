with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure drone is
    y : Integer;
    on : Integer;
    instruction : Character;
begin
    on := 0;
    y := 0;
    loop
        Put("Que faire : (d)émarrer (m)onter de(s)cendre (q)uitter? ");
        Get(instruction);
        case instruction is
            when 'd' =>
                on := 1;
                Put_Line("Le drone est en marche");
            when 'm' =>
                if on = 1 then
                    y := y + 1;
                    Put("Altitude : ");
                    Put(y);
                    New_Line;
                    if y >= 5 then
                        Put_Line("Le drone est hors de portée");
                        Put_Line("Au revoir");
                        exit;
                    end if;
                elsif on = 0 then
                    Put_Line("Le drone est éteint. Merci de l'allumer.");
                end if;
            when 's' =>
                if on = 1 then
                    if y = 0 then
                        Put_Line("Le drone ne peut pas avoir une altitude négative.");
                    elsif y > 0 then
                        y := y - 1;
                        Put("Altitude : ");
                        Put(y);
                        New_Line;
                    end if;
                elsif on = 0 then
                    Put_Line("Le drone est éteint. Merci de l'allumer.");
                end if;
            when 'q' =>
                Put_line("Au revoir");
                exit;
            when others =>
                Put_Line("saississez une instruction correcte");
        end case;
    end loop;
end drone;
