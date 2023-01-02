package pile_entier is
   TYPE pile_integer is RECORD
      element : INTEGER;
      som : INTEGER;
   end RECORD;

   procedure initialiser (une_pile : out pile_integer);

   procedure empiler (une_pile : in out pile_integer; un_entier : in INTEGER);

   function est_vide (une_pile : in pile_integer) return BOOLEAN;

   procedure depiler(une_pile : in out pile_integer);

   function sommet (une_pile : in pile_integer) return INTEGER;

   procedure test (une_pile : in out pile_integer);


private
   NMAX : CONSTANT INTEGER := 50;
   --TYPE TAB_ENTIER is ARRAY (1..NMAX) of INTEGER;
   --TYPE pile_integer is

end pile_entier;
