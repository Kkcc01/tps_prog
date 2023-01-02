with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure nb_parfaits is
   N : Natural;
   s : Natural;
begin
   Put("Tapez le nombre N (>= 2) = ");
   get(N);
   for i in 2..(N-1) loop
      s := 0;
      for j in 1..(i-1) loop
         if i mod j = 0 then
            s := s + j;
         end if;
      end loop;
      if s = i then
         Put(i);
         Put_Line(" est un nombre parfait.");
      end if;
   end loop;
end nb_parfaits;
