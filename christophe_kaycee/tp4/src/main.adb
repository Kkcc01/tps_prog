with tri; use tri;

procedure Main is
   le_tab : TAB_ENTIERS;
begin
   le_tab := (9, 2, 8, 5, 1, 7);

   afficher(le_tab);
   tri_insertion(le_tab);
   afficher(le_tab);
end Main;
