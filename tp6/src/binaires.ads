package binaires is


      TYPE BINAIRE is ARRAY(0..7) of INTEGER;
   un_decimal : INTEGER;
   un_binaire : BINAIRE;


   function bin_to_dec(un_binaire : in BINAIRE) return Integer;

   function dec_to_bin (un_decimal : in INTEGER) return BINAIRE;

   function addition_bin(un_binaire : in BINAIRE; autre_binaire : in BINAIRE) return BINAIRE;

   procedure afficher_bin(un_binaire : in BINAIRE);


END BINAIRES;
