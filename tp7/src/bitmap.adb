with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure bitmap is
   NMAX : constant INTEGER := 9; -- Indice maximum du tableau
   TYPE TAB_VALEUR is ARRAY(1..NMAX) of FLOAT;
   TYPE TAB_BOOLEAN is ARRAY(1..NMAX) of BOOLEAN;
   tab_val : TAB_VALEUR;
   tab_bool : TAB_BOOLEAN;
   imin, imax : INTEGER := 1;
   nb_elements : INTEGER := 0;


   procedure afficher(imin : Integer; imax : Integer) is
   Begin
      Put_Line("====================================================");
      Put_Line("indices    tableau de booléens    tableau de valeurs");
      Put_Line("====================================================");
      for i in imin..imax loop
         Put(i);
         Put(" ");
         Put(Boolean'Image(tab_bool(i)));
         Put("        ");
         Put_Line(FLOAT'Image(tab_val(i)));
      end loop;
      Put_Line("====================================================");
      New_Line;
      New_Line;
      Put_Line("Valeurs");
      Put_Line("====================================================");
      Put_Line("indices    tableau de booléens    tableau de valeurs");
      Put_Line("====================================================");
      for i in imin..imax loop
         if tab_bool(i) = true then
            Put(i);
            Put(" ");
            Put(Boolean'Image(tab_bool(i)));
            Put("        ");
            Put_Line(FLOAT'Image(tab_val(i)));
         end if;
      end loop;
      Put_Line("====================================================");
      Put("Nombre effectif d'éléments = ");
      Put_Line(Integer'Image(nb_elements));
      New_Line;
      New_Line;
   end afficher;


   procedure chercher(x : Float) is
      presence : Boolean := false;
   Begin
      for i in 1..NMAX loop
         if x = tab_val(i) and tab_bool(i) = true then
            Put(Integer'Image(i));
            presence := true;
            exit;
         end if;
      end loop;
      if presence = false then
         Put("0");
      end if;
   end chercher;


   procedure supprimer(indice : Integer) is
   Begin
      tab_bool(indice) := false;
   end supprimer;

   procedure compacter is
   Begin
      Put("imin = ");
      get(imin);
      Put("imax = ");
      get(imax);
      for i in reverse imin..imax loop
         if tab_bool(i) = false then
            tab_val(i) := tab_val(i -1);
            imax := imax - 1;
         end if;
      end loop;
   end compacter;

   procedure ajouter(y : in Float) is
      cherche_avant : Boolean := true;
      cherche_apres : Boolean := true;
      quitter : Boolean  := false;
   Begin
      for i in imin..imax loop
         if tab_bool(i) /= true and quitter = false then
            tab_val(i) := y;
            tab_bool(i) := true;
            cherche_apres := false;
            cherche_avant := false;
            quitter := true;
         end if;
      end loop;
      -- il n'y a pas de cases libres entre imin et imax donc on cherche une case vide entre 1 et imin
      if cherche_avant = true and quitter = false then
         for i in 1..imin loop
            if tab_bool(i) /= true then
               tab_val(i) := y;
               tab_bool(i) := true;
               cherche_apres := false;
               quitter := true;
            end if;
         end loop;
      end if;
      if cherche_apres = true and quitter = false then
         -- il n'y a pas de cases libres entre 1 et imin donc on cherche entre imax et NMAX
         for i in imax..NMAX loop
            if tab_bool(i) /= true then
               tab_val(i) := y;
               tab_bool(i) := true;
               quitter := true;
            end if;
         end loop;
         imax := imax + 1;
      end if;
      nb_elements := nb_elements + 1;
      Put("imin =");
      Put(imin);
      Put("imax");
      Put(imax);
   end ajouter;

Begin
   --tab_val := (4.1, 3.1, 0.0, 8.0, 4.0, 6.0, 8.0, 3.3, 9.0);
   --tab_bool := (true, true, false, false, true, true, false, false, true);
   tab_bool(1) := false;
   ajouter(1.0);
   afficher(1, 1);
   ajouter(2.6);
   afficher(1, 2);
end bitmap;
