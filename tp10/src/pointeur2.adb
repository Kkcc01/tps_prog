with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body pointeur2 is
   procedure initialiser(nom_matiere : in String; la_matiere : in out MATIERE) is
   Begin
      la_matiere.p_note := New Integer;
      la_matiere.code := nom_matiere;
      la_matiere.p_note := null;
   end initialiser;

   procedure afficher(la_matiere : in MATIERE) is
   Begin
      Put("Matière");
      Put("                        ");
      Put_Line("Note");
      Put(la_matiere.code);
      Put("                         ");
      Put_Line(Integer'Image(la_matiere.p_note.all));
   exception
      when CONSTRAINT_ERROR => Put_line("Il n'y a pas encore de note associé à cette matière.") ;
   end afficher;

   procedure modifier (la_matiere : in out MATIERE; note : in Integer) is
   Begin
      la_matiere.p_note.all := note;
   exception
      when Constraint_Error =>
         la_matiere.p_note := New Integer;
         la_matiere.p_note.all := note;
   end modifier;

end pointeur2;
