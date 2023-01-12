with Ada.Text_IO; use Ada.Text_IO;
with pile_entier; use pile_entier;

package body calculatrice is

   procedure get_ope (une_pile : in out pile) is
      commande : Character;
      res : integer;
   Begin
      Get(commande);
      empiler(une_pile, Character'pos(commande));
      case commande is
         when '+' => add := true;
         when '-' => sub := true;
         when '*' => mul := true;
         when '/' => div := true;
         when others =>
            if add = true then
               res := une_pile.all.element + une_pile.all.inf.inf.element;
               add := false;
            elsif sub = true then
               res := une_pile.all.element - une_pile.all.inf.inf.element;
               sub := false;
            elsif mul = true then
               res := une_pile.all.element * une_pile.all.inf.inf.element;
               mul := false;
            end if;
            depiler(une_pile);
            depiler(une_pile);
            depiler(une_pile);
            empiler(une_pile, res);
      end case;
   end get_ope;




end calculatrice;



