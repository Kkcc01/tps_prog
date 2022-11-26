with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_replace3 is
   CMAX : constant INTEGER := 80; -- taille maximum de la chaine
   ch : STRING(1..CMAX); -- chaine
   l_ch : INTEGER;
Begin
   Put("tapez la chaine : ");
   get_line(ch, l_ch);
   for i in reverse 1..l_ch loop
      if CHARACTER'POS(ch(i)) < 97 or CHARACTER'POS(ch(i)) > 122 then
         ch(i) := ch(i + 1);
         l_ch := l_ch - 1;
      end if;
   end loop;
   Put(ch(1..l_ch));
end string_replace3;
