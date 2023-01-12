package binaires is

   TYPE BINAIRE is ARRAY(0..7) of INTEGER;


   function bin_to_dec(un_binaire : in BINAIRE) return Integer;

   function dec_to_bin (somme : in out INTEGER) return BINAIRE;

   function addition_bin(un_binaire : in BINAIRE; autre_binaire : in BINAIRE) return BINAIRE;

   procedure afficher_bin(un_binaire : in BINAIRE);


END BINAIRES;
