with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with nb_amis; use nb_amis;


procedure Main is
   MAX : NATURAL := 0;
begin
   while MAX <= 3 loop
      Put("MAX (> 3) =  ");
      Get(MAX);
   end loop;
   afficher_nb_amis(MAX);
end Main;
