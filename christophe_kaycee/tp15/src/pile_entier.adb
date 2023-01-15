with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Unchecked_Deallocation;

package body pile_entier is

   procedure free is new Ada.Unchecked_Deallocation(Object => etage, Name => pile);

   procedure creer_pile_vide(une_pile : out pile) is
   Begin
      une_pile := new etage;
      une_pile := null;
   end creer_pile_vide;

   function est_vide (une_pile : in pile) return boolean is
   Begin
      return une_pile = null;
   end est_vide;


   procedure empiler (une_pile : in out pile; n : in INTEGER) is
      p : pile;
   Begin
      p := new etage;
      p.all.element := n;
      p.all.inf := une_pile;
      une_pile := p;
   end empiler;


   procedure depiler(une_pile : in out pile) is
      p : pile;
      pile_vide : exception;
   Begin
      if une_pile /= null then
         p := une_pile;
         une_pile := une_pile.all.inf;
         free(p);
      else
         raise pile_vide;
      end if;
   EXCEPTION
      when pile_vide => Put("Impossible de d�piler une pile vide");
   end depiler;

   function sommet (une_pile : in pile) return INTEGER is
      pile_vide : exception;
   Begin
      if une_pile /= null then
         return une_pile.all.element;
      else
         raise pile_vide;
      end if;
   EXCEPTION
      when pile_vide => Put("Impossible de retourner le sommet d'une pile vide");
   end sommet;

   function taille (une_pile : in pile) return INTEGER is
      size : Integer := 0;
      tmp : pile;
   Begin
      tmp := une_pile;
      if une_pile = null then
         return size;
      else
         while tmp /= null loop
            size := size + 1;
            tmp := tmp.all.inf;
         end loop;
         return size;
      end if;
   end taille;

   procedure afficher_pile (une_pile : in pile) is
      pile_vide : exception;
   Begin
      if une_pile /= null then
         Put(Character'Val(une_pile.all.element));
         afficher_pile(une_pile.all.inf);
      else
         raise pile_vide;
      end if;
   EXCEPTION
      when pile_vide => Put("Impossible d'afficher une pile vide");
   end afficher_pile;

   procedure test (une_pile : in out pile) is
   Begin
      creer_pile_vide(une_pile);
      empiler(une_pile, 5);
      empiler(une_pile, 3);
      empiler(une_pile, 9);
      afficher_pile(une_pile);
      if sommet(une_pile) = 9 then
         Put_Line("ok");
      else
         Put_Line("ko");
      end if;
      depiler(une_pile);
      afficher_pile(une_pile);
      depiler(une_pile);
      afficher_pile(une_pile);
      depiler(une_pile);
      afficher_pile(une_pile);
      if est_vide(une_pile) then
         Put_Line("ok");
      else
         Put_Line("ko");
      end if;
   end test;

end pile_entier;
