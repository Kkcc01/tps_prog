package somme is

   procedure sommer (m : in Integer; n : in Integer);
   -- semantique : cette procedure affiche la somme des entiers naturels i compris entre deux entiers m et n donn�s
   -- pre-condition : { 0 <= m <= n }
   -- post-condition : aucune
   -- exception : aucune
   -- tests :
   -- somme(1, 10) => 55
   -- somme(5, 1) = >

   end somme;
