with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body binaires is


   function bin_to_dec(un_binaire : in BINAIRE) return Integer is
   somme : Integer := 0;
   Begin
      for i in 0..7 loop
         somme := somme + un_binaire(i)*2**i;
      end loop;
      return somme;
   end bin_to_dec;


   function dec_to_bin (somme : in out INTEGER) return BINAIRE is
   res : BINAIRE;
   Begin
      for i in reverse 0..7 loop
         res(i) := somme mod 2;
         somme := somme/2;
      end loop;
      return res;
   end dec_to_bin;


   procedure afficher_bin(un_binaire : in BINAIRE) is
   Begin
      for i in 0..7 loop
         Put(un_binaire(i));
      end loop;
   end afficher_bin;

   function addition_bin(un_binaire : in BINAIRE; autre_binaire : in BINAIRE) return BINAIRE is
      x, y, z : Integer;
   Begin
      x := bin_to_dec(un_binaire);
      y := bin_to_dec(autre_binaire);
      z := x + y;
      return dec_to_bin(z);
   end addition_bin;

end binaires;
