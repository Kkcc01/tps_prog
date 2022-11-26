with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure binaires is
   TYPE BINAIRE is ARRAY(0..7) of INTEGER;
   n1, n2, n : INTEGER;
   tab1, tab2, res, tab : BINAIRE;
   s1, s2, s : INTEGER;
   i : INTEGER;
   entree, sortie : CHARACTER;

   function recup_bin return tab is
   Begin
      for i in reverse 0..7 loop
         Put_Line("saissisez le nombre binaire chiffre par chiffre");
         get(tab(i));
      end loop;
      return tab;
   end recup_bin;


   function recup_dec return n is
   Begin
      Put_Line("Saisissez le nombre decimal");
      get(n);
      return n;
   end recup_dec;


   function bin_to_dec(res : in BINAIRE) return s is
   Begin
      for i in 0..7 loop
         s := s + res(i)*2**i;
      end loop;
      return s;
   end bin_to_dec;


   function dec_to_bin (s : in out INTEGER) return res is
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

Begin
   Put("Quelle est le type de l'entrée [b, d] ?");
   get(entree);
   Put(" Quelle est le type de la sortie [b, d] ?");
   get(sortie);
   if entree = 'b' then
      tab1 := recup_bin;
      tab2 := recup_bin;
      n1 := bin_to_dec(tab1);
      n2 := bin_to_dec(tab2);
   elsif entree = 'd' then
      n1 := recup_dec;
      n2 := recup_dec;
   end if;
   s := n1 + n2;
   if sortie = 'b' then
      tab := dec_to_bin(s);
      afficher_bin(tab);
   elsif sortie = 'd' then
      Put(s);
   end if;

end binaires;
