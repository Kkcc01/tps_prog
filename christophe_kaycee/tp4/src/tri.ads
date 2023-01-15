package tri is

   NMAX : constant INTEGER := 6; -- Indice maximum du tableau
   TYPE TAB_ENTIERS is ARRAY(1..NMAX) of INTEGER;

   procedure tri_insertion(un_tab : in out TAB_ENTIERS);

   procedure afficher(un_tab : in TAB_ENTIERS);

end tri;
