with pile_entier; use pile_entier;

package calculatrice is

   procedure init (calculette : out pile);
   procedure reset(calculette : in out pile);
   procedure ajouter (calculette : in out pile; x : in Integer);
   procedure retirer (calculette : in out pile);
   procedure sommer (calculette : in out pile);
   procedure soustraire (calculette : in out pile);
   procedure multiplier (calculette : in out pile);
   procedure diviser (calculette : in out pile);
   procedure calcul (commande : in String; longueur : in Integer; calculette : in out pile);
   procedure test (calculette : in out pile);

end calculatrice;
