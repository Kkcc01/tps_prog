with Ada.Text_IO; use Ada.Text_IO;
with pile_entier; use pile_entier;

package body calculatrice is

   procedure init (calculette : out pile) is
   Begin
      creer_pile_vide(calculette);
   end init;

   procedure reset (calculette : in out pile) is
   Begin
      while not est_vide(calculette) loop
         depiler(calculette);
      end loop;
   end reset;

   procedure ajouter (calculette : in out pile; x : in Integer) is
   Begin
      empiler(calculette, x);
   end ajouter;

   procedure retirer (calculette : in out pile) is
   Begin
      depiler(calculette);
   end retirer;



   procedure sommer (calculette : in out pile) is
      x, y, res : Integer;
      pile_trop_petite : EXCEPTION;
   Begin
      if taille(calculette) < 2 then
         raise pile_trop_petite;
      else
         x := sommet(calculette);
         depiler(calculette);
         y := sommet(calculette);
         depiler(calculette);
         res := x + y;
         empiler(calculette, res);
         Put(Integer'Image(x));
         Put(" + ");
         Put(Integer'Image(y));
         Put(" = ");
         Put(Integer'Image(res));
         New_Line;
      end if;
   EXCEPTION
      when pile_trop_petite => Put_Line("L'addition nécessite au moins deux entiers.");
   end sommer;

   procedure soustraire (calculette : in out pile) is
      x, y, res : Integer;
      pile_trop_petite : EXCEPTION;
   Begin
      if taille(calculette) < 2 then
         raise pile_trop_petite;
      else
         x := sommet(calculette);
         depiler(calculette);
         y := sommet(calculette);
         depiler(calculette);
         res := x - y;
         empiler(calculette, res);
         Put(Integer'Image(x));
         Put(" - ");
         Put(Integer'Image(y));
         Put(" = ");
         Put(Integer'Image(res));
         New_Line;
      end if;
   EXCEPTION
      when pile_trop_petite => Put_Line("La soustraction nécessite au moins deux entiers.");
   end soustraire;

   procedure multiplier (calculette : in out pile) is
      x, y, res : Integer;
      pile_trop_petite : EXCEPTION;
   Begin
      if taille(calculette) < 2 then
         raise pile_trop_petite;
      else
         x := sommet(calculette);
         depiler(calculette);
         y := sommet(calculette);
         depiler(calculette);
         res := x * y;
         empiler(calculette, res);
         Put(Integer'Image(x));
         Put(" * ");
         Put(Integer'Image(y));
         Put(" = ");
         Put(Integer'Image(res));
         New_Line;
      end if;
   EXCEPTION
      when pile_trop_petite => Put_Line("La multiplication nécessite au moins deux entiers.");
   end multiplier;

   procedure diviser (calculette : in out pile) is
      x, y, res : Integer;
      pile_trop_petite : EXCEPTION;
   Begin
      if taille(calculette) < 2 then
         raise pile_trop_petite;
      else
         x := sommet(calculette);
         depiler(calculette);
         y := sommet(calculette);
         depiler(calculette);
         res := x / y;
         empiler(calculette, res);
         Put(Integer'Image(x));
         Put(" / ");
         Put(Integer'Image(y));
         Put(" = ");
         Put(Integer'Image(res));
         New_Line;
      end if;
   EXCEPTION
      when pile_trop_petite => Put_Line("La division nécessite au moins deux entiers.");
   end diviser;


   procedure calcul (commande : in String; longueur : in Integer; calculette : in out pile) is
      commande_invalide : EXCEPTION;
   Begin
      if longueur /= 1 then
         raise commande_invalide;
      else
         case commande(commande'First) is
            when '+' => sommer(calculette);
            when '-' => soustraire(calculette);
            when '*' => multiplier(calculette);
            when '/' => diviser(calculette);
            when others => raise commande_invalide;
         end case;
      end if;
   EXCEPTION
      when commande_invalide => Put_Line("Impossible de calculer, commande invalide");
   end calcul;


   procedure test (calculette : in out pile) is
      cmd : String(1..10);
      long, val : Integer;
      quitter : Boolean := false;
   Begin
      init(calculette);
      while not quitter loop
         New_Line;
         Put_Line("Tapez une opération ou un entier");
         Put_Line("Tapez 'C' pour reset effacer tout l'historique");
         Put_Line("Tapez 'Q' pour quitter le programme");
         New_Line;
         Get_Line(cmd, long);
         if cmd(1..long) = "Q" then
            Put_Line("Au revoir");
            quitter := true;
         else
            if cmd(1..long) = "C" then
               reset(calculette);
               Put_Line("Historique effacé");
            else
               if cmd(1..long) = "+" or else cmd(1..long) = "-" or else cmd(1..long) = "*" or else cmd(1..long) = "/" then
                  calcul(cmd, long, calculette);
               else
                  val := Integer'Value(cmd(1..long));
                  ajouter(calculette, val);
               end if;
            end if;
         end if;
      end loop;
      EXCEPTION when Constraint_Error => Put_Line("Saisie Incorrect");
   end test;

end calculatrice;



