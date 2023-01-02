with Ada.Text_IO; use Ada.Text_IO;

package body pile_entier is

   procedure initialiser (une_pile : out pile_integer) is
   Begin
      une_pile.som := 0;
   end initialiser;


   procedure empiler (une_pile : in out pile_integer; un_entier : in INTEGER) is
   Begin
      une_pile.som := une_pile.som + 1;
      une_pile.element := un_entier;
   end empiler;


   function est_vide (une_pile : in pile_integer) return BOOLEAN is
   Begin
      return (une_pile.som = 0);
   end est_vide;


   procedure depiler(une_pile : in out pile_integer) is
   Begin
      une_pile.som := une_pile.som - 1;
   end depiler;

   function sommet (une_pile : in pile_integer) return INTEGER is
   Begin
      return une_pile.element;
   end sommet;

   procedure test (une_pile : in out pile_integer) is
   Begin
      initialiser(une_pile);
      empiler(une_pile, 5);
      empiler(une_pile, 3);
      empiler(une_pile, 9);
      if sommet(une_pile) = 9 then
         Put_Line("ok");
      else
         Put_Line("ko");
      end if;
      depiler(une_pile);
      depiler(une_pile);
      if est_vide(une_pile) then
         Put_Line("ok");
      else
         Put_Line("ko");
      end if;
   end test;

end pile_entier;
