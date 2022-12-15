with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package ensembles is
   NMAX : constant integer := 3;
   TYPE elements is array(1..NMAX) of integer;
   type ensemble is record
      contenu : elements; --les elements de l'ensemble
      cardinal : integer; -- le nombre d'elements de l'ensemble
   end record;
   present : Boolean;


   function creer return ensemble;
   -- pre : none;
   -- post : cardinal = 0;


   function appartient(x : in Integer; e : in ensemble) return boolean;
   -- pre : e.cardinal > 0;
   -- post :


   procedure ajouter(x : in Integer; e : in out ensemble);
   -- pre :
   -- post :

   procedure supprimer(x : in Integer; e : in out ensemble);
   -- pre :
   -- post :


   procedure afficher(e : in ensemble);
   -- pre :
   -- post :

end ensembles;
