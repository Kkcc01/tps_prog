package P_ensemble is

   TYPE T_ensemble is private;


   function creer return T_ensemble;
   -- pre : none;
   -- post : cardinal = 0;
   -- semantique : cree un ensemble vide
   -- exceptions : none


   function appartient(x : in Integer; e : in T_ensemble) return boolean;
   -- pre : e.cardinal > 0;
   -- post : none
   -- semantique : verifie la presence d 'un element dans l'ensemble
   -- exceptions : none


   procedure ajouter(x : in Integer; e : in out T_ensemble);
   -- pre : none
   -- post : e.cardinal > 0
   -- semantique : ajoute un element à l'ensemble
   -- exceptions : ensemble_plein, element_present
   -- test : appartient(x, e) = True

   procedure supprimer(x : in Integer; e : in out T_ensemble);
   -- pre : appartient(x, e) = True
   -- post : appartient(x, e) = False
   -- semantique : supprime un element de l'ensemble
   -- exceptions : ensemble_plein, element_absent


   procedure afficher(e : in T_ensemble);
   -- pre : e.cardinal > 0
   -- post :
   -- semantique : affiche le contenu de l'ensemble
   -- exceptions : none

   procedure test1 (e : in out T_ensemble);

   procedure test2 (e : in out T_ensemble);

private

   NMAX : constant integer := 3;
   TYPE T_element is array(1..NMAX) of integer;
   type T_ensemble is record
      contenu : T_element; --les elements de l'ensemble
      cardinal : integer; -- le nombre d'elements de l'ensemble
   end record;


   ensemble_plein, element_present, ensemble_vide, element_absent : EXCEPTION;

end P_ensemble;
