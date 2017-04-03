with direccion,estado_casillero;
use direccion,estado_casillero;

package aspiradora is

   -- IMPORTANTE 1: En Ada deben definirse la clase del objeto y los metodos en el mismo alcance
   -- IMPORTANTE 2: En Ada debe pasarse el objeto como paramtero en cada metodo. Es un this explicito

   type t_aspiradora is tagged record
      direccion : t_direccion;
   end record;

   procedure moverse(a : in out t_aspiradora);
   function limpiar(a : in out t_aspiradora) return t_estado_casillero;
   procedure no_hacer_nada(a : in out t_aspiradora);

   procedure set_direccion(a : in out t_aspiradora; d: in t_direccion);
   function get_direccion (a : in t_aspiradora) return t_direccion ;

end aspiradora;
