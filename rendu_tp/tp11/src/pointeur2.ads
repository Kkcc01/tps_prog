package pointeur2 is
   TYPE MATIERE is private;


   procedure initialiser(nom_matiere : in String; une_matiere : in out MATIERE);
   -- pre :
   -- post :

   procedure afficher(une_matiere : in MATIERE);
   -- pre:
   -- post:

   procedure modifier (une_matiere : in out MATIERE; une_note : in Integer);
   -- pre :
   -- post :

   procedure test(la_matiere : in out MATIERE);

private
   TYPE PINT is access Integer;

   TYPE MATIERE is record
      code : String(1..5);
      note : PINT;
   end record;

end pointeur2;
