package bitmap is


   NMAX : constant INTEGER := 9; -- Indice maximum du tableau
   TYPE TAB_VALEUR is ARRAY(1..NMAX) of FLOAT;
   TYPE TAB_BOOLEAN is ARRAY(1..NMAX) of BOOLEAN;
   tab_val : TAB_VALEUR := (others => 0.0);
   tab_bool : TAB_BOOLEAN := (others => false);
   imin, imax : INTEGER := 1;
   nb_elements : INTEGER := 0;

   procedure afficher;

   procedure chercher(x : Float);

   procedure supprimer(indice : Integer);

   procedure compacter;

   procedure ajouter(y : in Float);

   end bitmap;
