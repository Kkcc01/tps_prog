with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with nb_amis; use nb_amis;


procedure Main is
   MAX : INTEGER;
begin
   Put("MAX (> 3) =  ");
   Get(MAX);
   afficher_nb_amis(MAX);
end Main;
