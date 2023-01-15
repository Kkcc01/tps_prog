with bitmap; use bitmap;

procedure main is
   tab_bool : TAB_BOOLEAN;
Begin

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
end main;
