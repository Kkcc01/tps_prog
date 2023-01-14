with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body pointeur2 is

   procedure initialiser(nom_matiere : in String; une_matiere : in out MATIERE) is
   Begin
      une_matiere.note := New Integer;
      une_matiere.note := null;
      une_matiere.code := nom_matiere;
   end initialiser;

   procedure afficher(une_matiere : in MATIERE) is
   Begin
      Put("Matière");
      Put("                        ");
      Put_Line("Note");
      Put(une_matiere.code);
      Put("                         ");
      if une_matiere.note = null then
         Put_line("Il n'y a pas encore de note associée à cette matière.");
      else
         Put_Line(Integer'Image(une_matiere.note.all));
      end if;
      New_Line;
   end afficher;

   procedure modifier (une_matiere : in out MATIERE; une_note : in Integer) is
   Begin
      if une_matiere.note = null then
         une_matiere.note := new Integer'(une_note);
      else
         une_matiere.note.all := une_note;
      end if;
   end modifier;


   procedure test(la_matiere : in out MATIERE) is
   Begin
      initialiser("Maths", la_matiere);
      afficher(la_matiere);
      modifier(la_matiere, 12);
      afficher(la_matiere);
      modifier(la_matiere, 15);
      afficher(la_matiere);
   end test;

end pointeur2;
