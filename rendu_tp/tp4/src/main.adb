with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with tri; use tri;

procedure Main is
   le_tab : TAB_ENTIERS;
begin
   le_tab := (9, 2, 8, 5, 1, 7);

   afficher(le_tab);
   tri_insertion(le_tab);
   afficher(le_tab);
end Main;
