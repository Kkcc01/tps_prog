package P_liste_double is

   Type T_liste is private;
   procedure creer_liste_vide (une_liste : out T_liste);


   function est_vide (une_liste : in T_liste) return boolean;


   procedure ajouter(une_liste : in out T_liste; n : in INTEGER);


   procedure afficher_liste (une_liste : in T_liste);


   function rechercher( une_liste : in T_liste; e : in INTEGER) return T_liste;


   procedure enlever(une_liste : in out T_liste; e : in INTEGER);


   procedure test(une_liste : in out T_liste);


private
   TYPE T_cellule;
   TYPE T_liste is access T_cellule;
   TYPE T_cellule is record
      prec : T_liste;
      valeur : INTEGER;
      suivant : T_liste;
   end record;

   liste_vide : exception;
   element_absent : exception;

end P_liste_double;
