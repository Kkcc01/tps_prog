with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package pointeur2 is
   TYPE PINT is access Integer;
   TYPE MATIERE is record
      code : String(1..5);
      p_note : PINT;
   end record;
   une_matiere : MATIERE;

   procedure initialiser(nom_matiere : in String; la_matiere : in out MATIERE);
   -- pre :
   -- post :

   procedure afficher(la_matiere : in MATIERE);
   -- pre:
   -- post:

   procedure modifier (la_matiere : in out MATIERE; note : in Integer);
   -- pre :
   -- post :
end pointeur2;
