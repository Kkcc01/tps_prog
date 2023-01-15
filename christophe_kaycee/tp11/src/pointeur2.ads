package pointeur2 is

   TYPE MATIERE is private;


   procedure initialiser(nom_matiere : in String; une_matiere : in out MATIERE);
   -- pre : none
   -- post : la matiere a un nom mais pas de note
   -- semantique : cr�ation d'une matiere avec nom mais sans note
   -- test : (une_matiere.note = null) = True

   procedure afficher(une_matiere : in MATIERE);
   -- pre : une_matiere a �t� initialis�e
   -- post :
   -- semantique : proc�dure qui affiche le nom de la matiere et la note associ�, s'il n'y a pas de note un message s'affiche
   -- test :

   procedure modifier (une_matiere : in out MATIERE; une_note : in Integer);
   -- pre : une_matiere a �t� initialis�
   -- post : la note a �t� cr�e ou modifi�
   -- semantique : procedure qui modifie le pointeur une_matiere.note
   -- test : (une_matiere.note.all = une_note) = True

   procedure test;

private
   TYPE PINT is access Integer;

   TYPE MATIERE is record
      code : String(1..5);
      note : PINT;
   end record;

end pointeur2;
