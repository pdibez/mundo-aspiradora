with casillero,aspiradora,direccion;
use casillero,aspiradora,direccion;

package mundo is

   type t_casilleros is array (t_posicion) of t_casillero;

   type t_mundo is tagged record
      casilleros : t_casilleros;
      aspiradora : t_aspiradora;
   end record;

   procedure inicializar_mundo(m : in out t_mundo);
   procedure ejecutar_iteracion(m : in out t_mundo);

end mundo;
