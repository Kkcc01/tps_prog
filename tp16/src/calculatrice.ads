with pile_entier; use pile_entier;
package calculatrice is
   commande : STRING(1..10); -- nombre, operation, ...
   longueur : INTEGER; -- nb reel de caracteres de la commande
   add, sub, mul, div, int : boolean := false;
   procedure get_ope (une_pile : in out pile);
end calculatrice;
