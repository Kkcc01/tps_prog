with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure nb_amis is
   MAX : Natural;
   s1, s2 : Natural;
   present : Boolean := false;
begin
   Put("Tapez le nombre MAX (> 2) = ");
   get(MAX);
   for N in 2..(MAX-1) loop
      s1 := 0;
      for j in 1..(N-1) loop
         if N mod j = 0 then
            s1 := s1 + j;
         end if;
      end loop;
      for M in 3..(MAX-1) loop
         s2 := 0;
         for i in 1..(M-1) loop
            if M mod i = 0 then
               s2 := s2 + i;
            end if;
         end loop;
         if M /= N and then s1 = M and then s2 = N then
            present := true;
            Put(N);
            Put(M);
            Put_Line(" sont des nombres amis");
         end if;
      end loop;
   end loop;
   if not present then
      Put_Line("Pas de nombre amis dans cet intervalle.");
   end if;
end nb_amis;
