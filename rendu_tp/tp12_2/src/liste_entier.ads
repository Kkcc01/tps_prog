package liste_entier is

   Type liste is private;
   liste_vide : exception;
   element_absent : exception;

   function creer_liste_vide return liste;
   -- semantique : créer une liste vide
   -- pre : none
   -- post : est_vide (1) vaut vrai
   -- exception : none

   function est_vide (une_liste : in liste) return boolean;
   -- semantique : tester si une liste 1 est vide
   -- pre : none
   -- post : none
   -- exception : none


   procedure inserer_en_tete (une_liste : in out liste; n : in INTEGER);
   -- semantique : insere l'element nouveau en tete de la liste 1
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


   procedure inserer_apres (une_liste : in out liste; n : in INTEGER; data : in INTEGER);
   -- semantique : insere dans la liste 1 (liste vide ou non vide), l'élement nouveau après la valeur data
   -- pre : none
   -- post : n appartient à une_liste
   -- exception : data n'est pas dans la liste ou la liste est vide


   procedure inserer_avant (une_liste : in out liste; n : in INTEGER; data : in INTEGER);
   -- semantique : insere dans la liste 1 (liste vide ou non vide), l'élement nouveau avant la valeur data
   -- pre : none
   -- post : n appartient à une_liste
   -- exception : data n'est pas dans la liste ou la liste est vide


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

end liste_entier;
