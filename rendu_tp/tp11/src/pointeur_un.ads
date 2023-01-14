package pointeur_un is
   TYPE PINT is private;

   procedure pointe(p : in out PINT);
   -- pre :
   -- post :


private
   TYPE PINT is access Integer;

end pointeur_un;
