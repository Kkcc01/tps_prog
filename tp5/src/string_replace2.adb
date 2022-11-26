with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure string_replace2 is
   CMAX : constant INTEGER := 80; -- taille maximum de la chaine
   ch : STRING(1..CMAX); -- chaine
   l_ch : INTEGER;
   ch2 : STRING(1..CMAX); -- chaine
   l_ch2 : INTEGER;
Begin
   Put("tapez la chaine : ");
   get_line(ch, l_ch);
   for i in 1..l_ch loop
      l_ch2 := l_ch;
      if CHARACTER'POS(ch(i)) < 97 or CHARACTER'POS(ch(i)) > 122 then
         ch2(i) := ch(i);
         Put(ch2(i));
         l_ch2 := l_ch2 - 1;
      end if;
   end loop;
end string_replace2;
