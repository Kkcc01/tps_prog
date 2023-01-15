package pile_entier is
   TYPE pile is private;

   procedure creer_pile_vide (une_pile : out pile);
   -- semantique : créer une liste vide
   -- pre : none
   -- post : est_vide (1) vaut vrai
   -- exception : none

   function est_vide (une_pile : in pile) return boolean;
   -- semantique : tester si une liste 1 est vide
   -- pre : none
   -- post : none
   -- exception : none


   procedure empiler (une_pile : in out pile; n : in INTEGER);
   -- semantique : insere l'element nouveau en tete de la liste 1
   -- pre : none
   -- post : n appartient à la liste
   -- exception : aucune


   procedure depiler(une_pile : in out pile);

   function sommet (une_pile : in pile) return INTEGER;
   function taille (une_pile : in pile) return INTEGER;

   procedure afficher_pile (une_pile : in pile);

   procedure test (une_pile : in out pile);


private
   TYPE etage;
   TYPE pile is access etage;
   TYPE etage is RECORD
      element : INTEGER;
      inf : pile;
   end RECORD;

end pile_entier;
