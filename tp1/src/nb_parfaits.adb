with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure nb_parfaits is
   N : Natural;
   i, j, s : Natural;
begin
   Put("Tapez le nombre N (>= 2) = ");
   get(N);
   i := 2;
   loop
      Exit when i = N;
      j := 1;
      s := 0;
      loop
         Exit when j = i;
         if i mod j = 0 then
            s := s + j;
         end if;
         j := j + 1;
      end loop;
      if s = i then
         Put(i);
      end if;
      i := i + 1;
   end loop;
end nb_parfaits;
