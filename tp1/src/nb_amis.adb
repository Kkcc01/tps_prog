with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure nb_amis is
   NMAX : Natural;
   N, M, s1, s2, i, j : Natural;
   c1, c2 : Boolean := False;
begin
   Put("Tapez le nombre NMAX (>= 1) = ");
   get(NMAX);
   N := 2;
   M := 1;
   loop
      Exit when N = NMAX;
      j := 1;
      s1 := 0;
      loop
         Exit when j = N;
         if N mod j = 0 then
            s1 := s1 + j;
         end if;
         j := j + 1;
      end loop;
      if s1 = M then
         c2 := True;
         Put(s1);
         Put("M parfaits");
      end if;
      loop
         Exit when M = NMAX;
         i := 1;
         s2 := 0;
         loop
            Exit when i = M;
            if M mod i = 0 then
               s2 := s2 + i;
            end if;
            i := i + 1;
         end loop;
         if s2 = N then
            c1 := True;
            Put(s2);
            Put("N parfaits");
         end if;
         M := M + 1;
      end loop;
      if c1 = True and c2 = True then
         Put(M);
         Put(N);
         Put(" sont des nombres parafits");
         New_Line;
      end if;
      N := N + 1;
   end loop;
end nb_amis;
