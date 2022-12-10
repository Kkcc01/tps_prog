with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure bitmap is
   NMAX : constant INTEGER := 9; -- Indice maximum du tableau
   TYPE TAB_VALEUR is ARRAY(1..NMAX) of FLOAT;
   TYPE TAB_BOOLEAN is ARRAY(1..NMAX) of BOOLEAN;
   tab_val : TAB_VALEUR := (others => 0.0);
   tab_bool : TAB_BOOLEAN := (others => false);
   imin, imax : INTEGER := 1;
   nb_elements : INTEGER := 0;


   procedure afficher is
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
      quitter : Boolean := false;
      occurence : Integer := 0;
   Begin
      for i in 1..NMAX loop
         if x = tab_val(i) and tab_bool(i) = true and quitter = false then
            occurence := i;
            presence := true;
            quitter := true;
            exit;
         end if;
      end loop;
      Put_Line(Integer'Image(occurence));
   end chercher;


   procedure supprimer(indice : Integer) is
   Begin
      tab_bool(indice) := false;
      nb_elements := nb_elements - 1;
      if indice = imax then
         imax := imax - 1;
      end if;
      if indice = imin then
         imin := imin + 1;
      end if;
   end supprimer;

   procedure compacter is
      TYPE TAB_INDICE is ARRAY(1..NMAX) of Integer;
      save : TAB_INDICE := (others => 0);
      m : Integer := 1;
      n : Integer := 1;
      nb_modif : Integer := 0;
      temp_imax : Integer := imax;
   Begin

      for i in imin..temp_imax loop
         if tab_bool(i) /= true then
            save(m):= i;
            imax := imax - 1;
            m := m + 1;
            nb_modif := nb_modif + 1;
         else
            if nb_modif > 0 then
               tab_val(save(n)) := tab_val(i);
               tab_bool(save(n)) := true;
               n := n + 1;
               nb_modif := nb_modif - 1;
               end if ;
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
            if tab_bool(i) /= true and quitter = false then
               tab_val(i) := y;
               tab_bool(i) := true;
               cherche_apres := false;
               quitter := true;
               imin := imin - 1;
            end if;
         end loop;
      end if;
      if cherche_apres = true and quitter = false and cherche_avant = true then
         -- il n'y a pas de cases libres entre 1 et imin donc on cherche entre imax et NMAX
         for i in imax..NMAX loop
            if tab_bool(i) /= true and quitter = false then
               tab_val(i) := y;
               tab_bool(i) := true;
               quitter := true;
               imax := imax + 1;
            end if;
         end loop;
      end if;
      nb_elements := nb_elements + 1;
   end ajouter;

Begin
   --tab_val := (4.1, 3.1, 0.0, 8.0, 4.0, 6.0, 8.0, 3.3, 9.0);
   --tab_bool := (true, true, false, false, true, true, false, false, true);
   tab_bool(1) := false;
   ajouter(1.0);
   ajouter(2.0);
   ajouter(3.0);
   ajouter(4.0);
   ajouter(5.0);
   afficher;
   supprimer(1);
   supprimer(3);
   supprimer(5);
   afficher;
   ajouter(2.5);
   ajouter(1.5);
   ajouter(4.0);
   afficher;
   chercher(4.0);
   chercher(1.0);
   supprimer(3);
   supprimer(4);
   afficher;
   chercher(4.0);
   compacter;
   afficher;




end bitmap;
