package liste_double is

   Type liste is private;

   liste_vide : exception;
   element_absent : exception;
   noeud_courant : liste;

   function creer_liste_vide return liste;
   -- semantique : créer une liste l vide
   -- pre : none
   -- post : est_vide (l) = true
   -- exception : none

   function est_vide (une_liste : in liste) return boolean;
   -- semantique : tester si une liste 1 est vide
   -- pre : none
   -- post : none
   -- exception : none


   procedure ajouter (une_liste : in out liste; n : in INTEGER);
   -- semantique : insere l'element nouveau
   -- pre : none
   -- post : n appartient à la liste
   -- exception : aucune


   procedure afficher_liste (une_liste : in liste);
   -- semantique : afficher les elements de la liste 1
   -- pre : none
   -- post : none
   -- exception : none


   function rechercher( une_liste : in liste; e : in INTEGER) return liste;
   -- semantique : recher si e est présent dans la liste 1, retourne son adresse ou null si la liste est vide ou si e n'appartient pas à la liste
   -- pre : none
   -- post : none
   -- exception : none


   procedure enlever(une_liste : in out liste; e : in INTEGER);
   -- semantique : enlever un element e de la liste (vide ou non)
   -- pre : none
   -- post : e n'appartient pas à la liste
   -- exception : aucune

   procedure test(une_liste : in out liste);


private
   TYPE cellule;
   TYPE liste is access cellule;
   TYPE cellule is record
      valeur : INTEGER;
      suivant : liste;
   end record;

end liste_double;
