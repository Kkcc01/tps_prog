package ensembles is

   TYPE ensemble is private;


   function creer return ensemble;
   -- pre : none;
   -- post : cardinal = 0;
   -- semantique : cree un ensemble vide
   -- exceptions : none


   function appartient(x : in Integer; e : in ensemble) return boolean;
   -- pre : e.cardinal > 0;
   -- post : none
   -- semantique : verifie la presence d 'un element dans l'ensemble
   -- exceptions : none


   procedure ajouter(x : in Integer; e : in out ensemble);
   -- pre :
   -- post :

   procedure supprimer(x : in Integer; e : in out ensemble);
   -- pre :
   -- post :


   procedure afficher(e : in ensemble);
   -- pre :
   -- post :

   procedure test1 (e : in out ensemble);

   procedure test2 (e : in out ensemble);

private
   NMAX : constant integer := 3;
   TYPE elements is array(1..NMAX) of integer;
   type ensemble is record
      contenu : elements; --les elements de l'ensemble
      cardinal : integer; -- le nombre d'elements de l'ensemble
   end record;


end ensembles;
