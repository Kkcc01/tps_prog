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
      note_negative : EXCEPTION;
   Begin
      if une_note < 0 then
         raise note_negative;
      else
         if une_matiere.note = null then
            une_matiere.note := new Integer'(une_note);
         else
            une_matiere.note.all := une_note;
         end if;
      end if;
   EXCEPTION
      when note_negative => Put("La note doit être positive ou nulle, réessayer !");
   end modifier;


   procedure test is
      mat1, mat2 : MATIERE;
   Begin
      initialiser("Maths", mat1);
      afficher(mat1);
      modifier(mat1, 12);
      afficher(mat1);
      modifier(mat1, 15);
      afficher(mat1);

      initialiser("Progr", mat2);
      afficher(mat2);
      modifier(mat2, -1);
   end test;

end pointeur2;
