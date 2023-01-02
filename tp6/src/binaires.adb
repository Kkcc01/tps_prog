with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body binaires is


   function bin_to_dec(un_binaire : in BINAIRE) return Integer is
   Begin
      for i in 0..7 loop
         s := s + res(i)*2**i;
      end loop;
      return s;
   end bin_to_dec;


   function dec_to_bin (s : in out INTEGER) return BINAIRE is
   Begin
      for i in reverse 1..7 loop
         res(i) := (s mod 2);
         s := s/2;
      end loop;
      return res;
   end dec_to_bin;


   procedure afficher_bin(tab : in BINAIRE) is
   Begin
      for i in 0..7 loop
         Put(tab(i));
      end loop;
   end afficher_bin;


end binaires;
