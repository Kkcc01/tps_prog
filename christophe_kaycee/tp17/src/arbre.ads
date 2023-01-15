package arbre is

   type T_AB is private;

   procedure Initialiser(Abr: out T_AB);

   function Est_Vide (Abr : T_AB) return Boolean;

   function Taille (Abr : in T_AB) return Integer;

   procedure Inserer (Abr : in out T_AB ; Donnee : in Integer);

   function Recherche (Abr : T_AB; Donnee: in Integer) return Boolean;

   procedure Modifier (Abr : in out T_AB ; src_donnee : in Integer; tar_donnee : in Integer);

   procedure Supprimer (Abr : in out T_AB; donnee : in Integer);

   procedure Afficher (Abr : in T_AB);

   function maximum (Abr : T_AB) return Integer;
   -- pre
   -- post
   --

private
   TYpe T_noeud;
   TYPE T_AB is access T_noeud;
   TYPE T_noeud is record
      f_g : T_AB;
      contenu : Integer;
      f_d : T_AB;
   end record;

end arbre;
