with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with pointeur_un; use pointeur_un;
with pointeur2; use pointeur2;

procedure Main is
Begin
   --p := New Integer;
   --p.all := 99;
   --pointe(p);
   initialiser("Maths", une_matiere);
   modifier(une_matiere, 12);
   afficher(une_matiere);

end Main;
